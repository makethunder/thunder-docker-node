#!/bin/sh
#
# Custom entrypoint that, when required, uses chamber 'exec' to run our
# application.
#
# Chamber populates environment variables based on key/value pairs in AWS
# Parameter Store.
#
# Requires curl, chamber, jq (should be baked into Docker image)

METADATA_URL="http://169.254.170.2/v2/metadata"
CHAMBER="/usr/local/bin/chamber"

if [ ! -z "${AWS_REGION}" ]; then
    if [ -z "${CHAMBER_PATH}" ]; then
        # Identifies our task name (e.g., worker-staging, worker-production)
        # which maps to our service's Parameter Store path.
        CHAMBER_PATH=$(curl --silent --show-error "${METADATA_URL}" | jq -r .Family)
    fi

    exec "${CHAMBER}" exec "${CHAMBER_PATH}" -- "$@"
else
    exec "$@"
fi
