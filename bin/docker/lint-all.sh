#!/usr/bin/env bash

source ./shared.sh

HERE=$(pwd)


main() {
    printf "\n%s\n" "--- ROUTINE STARTED ---"

    newl
    echo "PULLING HADOLINT"

    newl
    docker pull hadolint/hadolint

    for docker_proj in */; do
        newl
        echo "ENTERING PROJECT: ${docker_proj}"

        local dp_dir  # [d]ocker [p]roject dir
        dp_dir="${HERE}/${docker_proj}"
        (
            cd "$dp_dir"

            local df_path  # [d]ocker[f]ile path
            df_path="${dp_dir}/Dockerfile"

            if [[ -f "$df_path" ]]; then
                ew "Checking..."
                if docker run --rm -i hadolint/hadolint < Dockerfile; then
                    ef "no problems found"
                else
                    return 1
                fi
            else
                ei "Dockerfile not found; skipping"
            fi
        )
    done
}

main
