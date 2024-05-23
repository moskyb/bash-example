#!/usr/bin/env bash

set -ex

SECRET=`buildkite-agent secret get cool_secret`

echo "secret from pipeline env is $NOT_A_TOKEN"

echo "The secret is $SECRET"
