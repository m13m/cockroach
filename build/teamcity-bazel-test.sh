#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "${0}")/teamcity-support.sh"  # For $root
source "$(dirname "${0}")/teamcity-bazel-support.sh"  # For run_bazel

tc_prepare

tc_start_block "Run Bazel test"
run_bazel build/bazelutil/bazeltest.sh
tc_end_block "Run Bazel test"
