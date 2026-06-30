#!/usr/bin/env bash

set -euo pipefail

python -m grpc_tools.protoc \
    -I=. \
    --python_out=. \
    --grpc_python_out=. \
    gogi/v1/data/*.proto \
    gogi/v1/*.proto

