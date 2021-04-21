#!/usr/bin/env bash

set -e

cd "${INPUT_PATH}"
make-coverage-badge --output-path "${INPUT_OUTPUT_PATH}" --report-path "${INPUT_REPORT_PATH}"
