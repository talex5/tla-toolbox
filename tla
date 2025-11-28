#!/bin/sh
set -eu

DOCKER_X11="$PWD/unix-x11-docker.socket"
socat UNIX-LISTEN:"$DOCKER_X11",fork ABSTRACT-CONNECT:/tmp/.X11-unix/X0 &
SOCAT_PID=${!}
trap 'kill $SOCAT_PID' EXIT

mkdir -p projects

docker run --rm -it \
	-u 1000:1000 \
	-e 'DISPLAY=:0' \
	--network none \
	-v "$DOCKER_X11:/tmp/.X11-unix/X0" \
	-v "$PWD/projects:/mnt" \
	-v "tlaplus-home:/home/user" \
	tla-toolbox /opt/TLA+Toolbox/toolbox
