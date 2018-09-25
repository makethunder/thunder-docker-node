#!/bin/sh

# meant to be called from within a Dockerfile; requires curl

JQ_VERSION="1.5"
JQ_PATH="/usr/local/bin/jq"

curl -sL "https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64" \
  -o $JQ_PATH \
  && chmod +x $JQ_PATH
