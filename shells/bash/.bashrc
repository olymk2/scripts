alias sudo='sudo '
alias git_history_reverse="git for-each-ref --sort='-authordate:iso8601' --format=' %(authordate:relative)%09%(refname:short)' refs/heads"
alias git_history="git for-each-ref --sort='-authordate:iso8601' --format=' %(authordate:relative)%09%(refname:short)' refs/heads | tac"
alias git_clean="git clean -f *.orig"
alias git_current="git branch | grep '*'"
alias git_diff="git difftool --dir-diff"

alias docker_clean_old_containers='sudo docker rm $(sudo docker ps -aq)'
alias docker_clean_old_images='docker rmi $(sudo docker images --filter dangling=true)'
alias docker_stats='sudo -i docker stats $(sudo docker ps | awk '"'"'{if(NR>1) print $NF}'"'"')'
alias docker_clean_dangling='sudo -i docker rmi $(sudo docker images -f "dangling=true" -q)'
alias docker_ip_addresses='sudo docker ps -q | xargs -n 1 sudo docker inspect --format "{{ .NetworkSettings.IPAddress }} {{ .Name }}" | sed "s/ \// /"'

