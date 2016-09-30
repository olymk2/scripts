function docker_ps
	docker ps -a --format="table {{printf \"%.20s\" .Names}}\t{{printf \"%.40s\" .Image}}\t{{printf \"%.10s\" .Status}}"
end
