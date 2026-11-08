#!/usr/bin/env bash
# Print the current local date and time.
#
# Usage:
#   ./time.sh              # default format
#   ./time.sh "%H:%M:%S"   # custom strftime format
#   ./time.sh --help
set -euo pipefail

format="${1:-%Y-%m-%d %H:%M:%S %Z}"

case "$format" in
  -h|--help)
    cat <<'EOF'
Usage: ./time.sh [FORMAT]

Print the current local date and time.

FORMAT is an optional date(1) strftime format string.
The default is "%Y-%m-%d %H:%M:%S %Z", e.g. 2026-11-09 00:20:31 CST.
EOF
    exit 0
    ;;
esac

date "+${format}"
