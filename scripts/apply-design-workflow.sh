#!/usr/bin/env bash
# Back-compat alias — use scripts/design-apply.sh
exec bash "$(dirname "$0")/design-apply.sh" "$@"
