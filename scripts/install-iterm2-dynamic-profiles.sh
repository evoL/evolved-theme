#!/bin/bash

DYNAMIC_PROFILE_DIR="${HOME}/Library/Application Support/iTerm2/DynamicProfiles"

jsonnet \
  --output-file "${DYNAMIC_PROFILE_DIR}/evolved-theme.json" \
  iterm2/dynamic-profile.jsonnet
