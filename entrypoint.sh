#!/usr/bin/env bash

set -e

npx make-coverage-badge@1.2.0 --output-path "${INPUT_PATH}/${INPUT_OUTPUT_PATH}" --report-path "${INPUT_PATH}/${INPUT_REPORT_PATH}"
