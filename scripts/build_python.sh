#!/usr/bin/env bash

set -euo pipefail

python -m grpc_tools.protoc \
    -I=. \
    --python_out=. \
    --grpc_python_out=. \
    v1/data/*.proto \
    v1/*.proto
