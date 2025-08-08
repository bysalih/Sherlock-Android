#!/usr/bin/env bash
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
else
  echo "Gradle is not installed. Please install Gradle."
  exit 1
fi
