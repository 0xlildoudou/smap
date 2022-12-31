#!/usr/bin/env bash
docker run --rm -it -v $(pwd):/data smap "$@"