function git_file_diff
	git diff-tree --no-commit-id --name-status -r $argv
end
