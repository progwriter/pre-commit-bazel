#!/usr/bin/env bash
set -euo pipefail

CMD="bazelisk"
if ! type "${CMD}" &> /dev/null; then
    CMD="bazel"
fi
${CMD} run //:buildifier 
