#!/usr/bin/env bash

set -e

echo "=== Vega-AI Local Environment Bootstrap ==="

# Check for Go
if ! command -v go &> /dev/null; then
    echo "Go is not installed. Please install Go 1.23+"
    exit 1
fi
echo "Go version: $(go version)"

# Check for uv
if ! command -v uv &> /dev/null; then
    echo "Installing Astral uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi
echo "uv version: $(uv --version)"

# Check for pnpm
if ! command -v pnpm &> /dev/null; then
    echo "Installing pnpm..."
    npm install -g pnpm
fi
echo "pnpm version: $(pnpm --version)"

# Check for buf
if ! command -v buf &> /dev/null; then
    echo "Installing Buf CLI..."
    GO111MODULE=on go install github.com/bufbuild/buf/cmd/buf@v1.32.0
fi

echo "=== Setup Completed Successfully ==="
