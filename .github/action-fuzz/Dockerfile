# Dockerfile
FROM debian:9.5-slim

LABEL "com.github.actions.name"=""
LABEL "com.github.actions.description"="Write ARGS to standardoutput"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/runleonarun/hello-fuzz"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Octocat <octocat@github.com>"

RUN apt-get install -y git man

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
