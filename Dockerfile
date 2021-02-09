FROM docker/compose:debian-1.28.2 AS docker-debian
FROM gocd/gocd-agent-ubuntu-18.04:v21.1.0 AS agent-runtime
COPY --from=docker-debian  /usr/local/bin/docker           /usr/local/bin/docker
COPY --from=docker-debian  /usr/local/bin/docker-compose   /usr/local/bin/docker-compose
