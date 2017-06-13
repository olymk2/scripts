function git_history
    git for-each-ref --sort=committerdate refs/heads/ --format='%(color:red)%(objectname:short)%(color:reset) -%(HEAD)%(color:yellow)%(refname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'
end
