function __parse_current_folder --description 'Print the current working directory, shortened to fit the prompt'
	set -l args_post
	set -l args_pre
	set -l realhome ~
	echo $PWD | sed -e "s|^$realhome|~|" $args_pre -e 's-\([^/.]\)[^/]*/-\1/-g' $args_post
end
