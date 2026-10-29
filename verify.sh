#!/usr/bin/env bash
# Checks that each DevOps workstation tool is installed and prints its version.
check() {
  if command -v "$1" >/dev/null 2>&1; then
    printf "OK      %-10s %s\n" "$1" "$($2 2>/dev/null | head -1)"
  else
    printf "MISSING %s\n" "$1"; missing=1
  fi
}
check git       "git --version"
check az        "az --version"
check docker    "docker --version"
check terraform "terraform -version"
check code      "code --version"
exit ${missing:-0}
