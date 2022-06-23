#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

PROTO_DIR=$(realpath "$SCRIPT_DIR/../proto")
OUT_DIR=$(realpath "$SCRIPT_DIR/../api")

echo $PROTO_DIR
echo $OUT_DIR

protoc -I=$PROTO_DIR --go_out=$OUT_DIR $PROTO_DIR/*.proto
