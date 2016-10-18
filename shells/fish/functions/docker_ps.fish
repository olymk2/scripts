function docker_ps
	#docker ps -a --format="table {{printf \"%.20s\" .Names}}\t{{printf \"%.40s\" .Image}}\t{{printf \"%.10s\" .Status}}"
	docker ps -q | xargs docker inspect --format="{{printf \"%.30s\" .Name}} @ {{printf \"%.20s\" .Config.Image}} @ http://{{if ne \"\" .NetworkSettings.IPAddress}}{{ printf \"%.22s\" .NetworkSettings.IPAddress}}{{else}}{{range .NetworkSettings.Networks}}{{printf \"%.22s\" .IPAddress}}{{end}}{{end}} @ {{printf \"%.10s\" .State.Status}}" | column -t -s@ -c 80
end
