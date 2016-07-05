function docker_rm_grep
    docker ps -q | xargs -n 1 docker inspect --format "{{ .Name }}" | sed -e 's/^\///' | grep $argv
end
