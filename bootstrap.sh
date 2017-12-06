#!/usr/bin/env bash

#             ██   ██  ██
#            ░██  ░░  ░██
#   ██   ██ ██████ ██ ░██  ██████
#  ░██  ░██░░░██░ ░██ ░██ ██░░░░
#  ░██  ░██  ░██  ░██ ░██░░█████
#  ░██  ░██  ░██  ░██ ░██ ░░░░░██
#  ░░██████  ░░██ ░██ ███ ██████
#   ░░░░░░    ░░  ░░ ░░░ ░░░░░░

PROFILE_DIR="profile"

pass() {
	local suc_msg=${1}
	[[ $suc_msg == "" ]] && suc_msg="Passed"

	printf "%s\n" "$suc_msg"
}

halt() {
	local message=${1}

	[[ $message == "" ]] && message="Error"
	printf "%s\n" "$message"

	case $message in
		soft)
			return 1
			;;

		*)
			printf "\nPROGRAM HALTED.\n"
			exit 1
			;;
	esac
}

spacer() {
	local spacer=""
	
	for i in $(seq 1 ${1}); do
		spacer="$spacer "
	done

	printf "%s" "$spacer"
}


#                           ██   ████
#                          ░░   ░██░
#   ██    ██  █████  ██████ ██ ██████
#  ░██   ░██ ██░░░██░░██░░█░██░░░██░
#  ░░██ ░██ ░███████ ░██ ░ ░██  ░██
#   ░░████  ░██░░░░  ░██   ░██  ░██
#    ░░██   ░░██████░███   ░██  ░██
#     ░░     ░░░░░░ ░░░    ░░   ░░

check_stow() {
	[ ! -x "$(command -v stow)" ] && echo 1
}

get_profiles() {
	shopt -s nullglob

	cd $PROFILE_DIR
	PROFILE_ARRAY=(*)
	cd ..

	shopt -u nullglob

	PROFILE_COUNT=${#PROFILE_ARRAY[@]}
}

check_profile() {
	if [ -d $PROFILE_DIR ]; then

		get_profiles

		if [[ $PROFILE_COUNT > 0 ]]; then
			echo $PROFILE_COUNT
		else
			echo empty
		fi
	else
		echo not_found
	fi
}

backup_conf() {
	[ ! -d ./.backup ] && mkdir .backup
}

link_profile() {
	case ${1} in
		simulate)
			stow ${2} --simulate --target=$HOME --dir=profile >/dev/null 2>&1
			;;

		stow)
			stow --stow ${2} --target=$HOME --dir=profile >/dev/null 2>&1
			;;
	esac
	echo $?
}

bootstrap() {
	get_profiles

	# char length of PROFILE_COUNT plus 3 ('[', ']' and '/')
	let "max_step_len = (${#PROFILE_COUNT} * 2) + 3"
	local space=$( spacer $((max_step_len-2)) )

	# from index 0 to PROFILE_COUNT minus 1
	for i in $( seq 0 $((PROFILE_COUNT-1)) ); do
		local profile=${PROFILE_ARRAY[$i]}
		local step_ind="[$((i+1))/$PROFILE_COUNT]"

		# "[1/x] Checking profile of Y..."
		printf "\n%${max_step_len}s %s" \
			"$step_ind" \
			"Checking profile of $profile... "

		local profile_check=$(link_profile simulate "$profile")
		pass Done

		if [[ $profile_check == 0 ]]; then
			printf "$space > PASSED: No conflicts found\n"
			printf "$space > Trying to stow... "

			local stow_check=$(link_profile stow "$profile")
			if [[ $stow_check == 0 ]]; then
				pass Done
			else
				pass soft
			fi
		else
			printf "$space > ERROR: Conflicts found\n"
			printf "$space > Backing up target... "
		fi
	done
}


#                         ██
#                        ░░
#   ██████████   ██████   ██ ███████
#  ░░██░░██░░██ ░░░░░░██ ░██░░██░░░██
#   ░██ ░██ ░██  ███████ ░██ ░██  ░██
#   ░██ ░██ ░██ ██░░░░██ ░██ ░██  ░██
#   ███ ░██ ░██░░████████░██ ███  ░██
#  ░░░  ░░  ░░  ░░░░░░░░ ░░ ░░░   ░░

main() {
	cat << EOP

      ██            ██
     ░██           ░██
     ░██  ██████  ██████  ██████
  ██████ ██░░░░██░░░██░  ██░░░░
 ██░░░██░██   ░██  ░██  ░░█████
░██  ░██░██   ░██  ░██   ░░░░░██
░░██████░░██████   ░░██  ██████
 ░░░░░░  ░░░░░░     ░░  ░░░░░░

EOP

	printf "The boostrap sequence has started...\n\n"

	# ------------------------------
	printf "Checking Stow... "
	[[ $(check_stow) == 1 ]] && halt
	pass

	# ------------------------------
	printf "Checking Profiles... "
	local cp_resp=$(check_profile)
	case $cp_resp in
		not_found)
			halt "Missing directory"
			;;

		empty)
			halt "No profile was found"
			;;

		*)
			pass "$cp_resp Found"
			;;
	esac

	# ------------------------------
	printf "Starting profile bootstrapping...\n"
	bootstrap

	return 0
}

main && PROGRAM_STATUS=$?
exit $PROGRAM_STATUS
