#!/usr/bin/env bash

set -eo pipefail

EXIT_STATUS=0

(xcodebuild \
  -workspace ${SAMPLE}/${SAMPLE}.xcworkspace \
  -scheme ${SAMPLE} \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone XR' \
  build \
  test \
  ONLY_ACTIVE_ARCH=YES \
  | xcpretty) || EXIT_STATUS=$?
  
  exit $EXIT_STATUS
