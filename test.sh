#!/bin/sh
set -eu

PROJECTS="$(realpath $(dirname $0))/projects"
PROOF="$(realpath $1)"
PROOF="${PROOF#"$PROJECTS/"}"

docker run --rm -t \
	-u 1000:1000 \
	--network none \
	-v "$PROJECTS:/mnt" \
	-v "tlaplus-home:/home/user" \
	tla-toolbox /opt/tlapm/bin/tlapm --timing "$PROOF"
