#!/usr/bin/env bash
set -euo pipefail

export PATH="$PATH:$(go env GOPATH)/bin"

protoc \
    -I=. \
    --go_out=. \
    --go-grpc_out=. \
    gogi/v1/data/*.proto \
    gogi/v1/*.proto
