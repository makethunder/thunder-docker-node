#!/bin/sh

NODE_RELEASES="6 8 10"

for release in $NODE_RELEASES; do
    for variant in $(ls "${release}"); do
        docker build \
            -t "makethunder/node:${release}-${variant}" \
            -f "${release}/${variant}/Dockerfile" .
    done
done
