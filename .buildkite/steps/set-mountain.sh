#! /usr/bin/env bash

curl --unix-socket "$BUILDKITE_AGENT_JOB_API_SOCKET" \
  -H "Authorization: Bearer $BUILDKITE_AGENT_JOB_API_TOKEN" \
  -d '{ "env": { "MOUNTAIN": "cotopaxi" } } }' \
  -XPATCH http://localhost/api/current-job/v0/env | jq .
