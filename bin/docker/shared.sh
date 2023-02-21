#!/usr/bin/env bash

LOG_FILE="process.log"

# [e]cho [i]ndented
ei() {
    echo "  ${1}"
}

# [e]cho [w]aiting
ew() {
    printf "  %s" "$1"
}

# [e]cho [f]inished
ef() {
    printf " %s\n" "$1"
}

newl() {
    echo ""
}

log() {
    echo "[${2}]: ${3}" >> "${1}/${LOG_FILE}"
}

see_logs() {
    local log_fp
    log_fp="${1}/${LOG_FILE}"

    if [[ -f "$log_fp" ]]; then
        newl
        echo "EXECUTION ERRORS:"

        newl
        cat "$log_fp"
        rm "$log_fp"
    fi
}
