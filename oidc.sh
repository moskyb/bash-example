#!/usr/bin/env bash

token=$(buildkite-agent oidc request-token --audience "https://packages.buildkite.com/bennos-super-secret-cool-time-org/alpine" --claim "queue_key")
echo "Token: $token"
echo
echo

curl --fail-with-body -H "Authorization: Bearer $token" https://api.buildkite.com/v2/packages/organizations/bennos-super-secret-cool-time-org/registries/alpine/packages/019075f2-ae48-7682-98e3-1edcc6430739 | jq
