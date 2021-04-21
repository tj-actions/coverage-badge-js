#!/usr/bin/env bash

set -e

echo "Running: make-coverage-badge --output-path ${INPUT_PATH}/${INPUT_OUTPUT_PATH} --report-path ${INPUT_PATH}/${INPUT_REPORT_PATH}"
make-coverage-badge --output-path "${INPUT_PATH}/${INPUT_OUTPUT_PATH}" --report-path "${INPUT_PATH}/${INPUT_REPORT_PATH}"
