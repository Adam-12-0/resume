#!/usr/bin/env bash
set -euo pipefail

TINYTEX_BIN="${HOME}/Library/TinyTeX/bin/universal-darwin"
LATEXMK_BIN="${TINYTEX_BIN}/latexmk"

if [ ! -x "${LATEXMK_BIN}" ]; then
  echo "latexmk wrapper error: TinyTeX latexmk not found at ${LATEXMK_BIN}" >&2
  exit 127
fi

export PATH="${TINYTEX_BIN}:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin${PATH:+:${PATH}}"
exec "${LATEXMK_BIN}" "$@"
