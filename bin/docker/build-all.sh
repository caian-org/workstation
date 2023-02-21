#!/usr/bin/env bash

source ./shared.sh

DOCKER_ACC_USERNAME="caian"
HERE=$(pwd)


check_and_build() {
    ew "Checking remote repository..."

    local repo
    local tag
    repo="$1"
    tag="$2"

    local proj_tagged
    local proj_latest
    proj_tagged="${DOCKER_ACC_USERNAME}/${repo}:${tag}"
    proj_latest="${DOCKER_ACC_USERNAME}/${repo}:latest"

    if docker manifest inspect "$proj_tagged" > /dev/null 2>&1; then
        ef "tag already exists; skipping"
    else
        ef "not found"
        ei "Building image..."
        newl

        if docker build -t "$proj_tagged" .; then
            docker build -t "$proj_latest" .
            newl

            ei "Pushing to remote repository..."
            newl

            if docker push "$proj_tagged"; then
                docker push "$proj_latest"
                newl
                ei "FINISHED"
            else
                log "$HERE" "$repo" "Could not push image to remote"
            fi
            # ...
        else
            log "$HERE" "$repo" "Could not build image"
        fi
    fi
}

main() {
    printf "\n%s\n" "--- ROUTINE STARTED ---"

    for docker_proj in */; do
        newl
        echo "ENTERING PROJECT: ${docker_proj}"

        local dp_nfs  # [d]ocker [p]roject - [n]o [f]inal [s]lash
        dp_nfs="${docker_proj%*/}"

        local dp_dir  # [d]ocker [p]roject - dir
        dp_dir="${HERE}/${docker_proj}"
        (
            cd "$dp_dir"

            local df_path  # [d]ocker[f]ile path
            df_path="${dp_dir}/Dockerfile"

            if [[ -f "$df_path" ]]; then
                local version
                version=$(head -1 "$df_path" | awk '{split($0, a, "="); print a[2]}' | xargs)

                if [[ "$version" == "" ]]; then
                    local err_msg
                    err_msg="Could not retrieve version from Dockerfile; file is malformed, skipping"

                    ei "$err_msg"
                    log "$HERE" "$dp_nfs" "$err_msg"
                else
                    ei "Found with version ${version}"
                    check_and_build "$dp_nfs" "$version"
                fi
            else
                ei "Dockerfile not found; skipping"
            fi
        )
    done

    see_logs "$HERE"
    printf "\n%s\n" "--- ROUTINE FINISHED ---"
}

main
