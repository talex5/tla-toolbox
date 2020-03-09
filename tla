#!/bin/sh
docker run --rm -it \
	-e "DISPLAY=$DISPLAY" \
	--network none \
	-v /tmp:/tmp \
	-v "$PWD:/mnt" \
	-v "tlaplus-config:/root/.tlaplus" \
	tla-toolbox /tla/toolbox/toolbox
