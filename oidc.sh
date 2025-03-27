#!/usr/bin/env bash

set -x

org_slug="test"
registry_slug="sneke"

token=$(buildkite-agent oidc request-token \
  --audience "http://packages.buildkite.localhost/$org_slug/$registry_slug" \
  --claim "queue_key")

curl -X GET --fail-with-body -H "Authorization: Bearer $token" \
 "http://api.buildkite.localhost/v2/packages/organizations/$org_slug/registries/$registry_slug/packages" | jq
