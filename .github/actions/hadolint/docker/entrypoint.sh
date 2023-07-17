#!/bin/sh -l
# shellcheck disable=SC2124
# ==================================================================
# @license MIT https://github.com/ragsworks/reusable-linters/blob/master/LICENSE
# @author Darren "Ragdata" Poulton <ragdata@ragdata.dev>
# ==================================================================
# CLI_ARGS would normally be the path to the Dockerfile to be inspected
# ==================================================================
set -e

CLI_ARGS="$@"

echo "::debug CLI_ARGS: ${CLI_ARGS}"

hadolint "${CLI_ARGS}" 2>&1
