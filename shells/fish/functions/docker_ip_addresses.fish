function docker_ip_addresses
	docker ps -q | xargs -n 1 docker inspect --format "{{ .NetworkSettings.IPAddress }} {{ .Name }}" | sed "s/ \// /"
end
