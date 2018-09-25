#!/bin/sh

# meant to be called from within a Dockerfile; requires curl

CHAMBER_VERSION="2.1.0"
CHAMBER_PATH="/usr/local/bin/chamber"

curl -sL "https://github.com/segmentio/chamber/releases/download/v$CHAMBER_VERSION/chamber-v$CHAMBER_VERSION-linux-amd64" \
  -o $CHAMBER_PATH \
  && chmod +x $CHAMBER_PATH
