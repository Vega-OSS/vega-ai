.PHONY: help setup dev build test lint proto k3s-up k3s-down

help:
	@echo "Vega-AI Developer Commands:"
	@echo "  make setup      - Install local toolchain & dependencies"
	@echo "  make dev        - Start local development environment"
	@echo "  make build      - Build all microservices & frontend apps"
	@echo "  make test       - Run unit tests across Go, Python, and Node"
	@echo "  make lint       - Run golangci-lint, ruff, and eslint"
	@echo "  make proto      - Generate protobuf code using Buf"
	@echo "  make k3s-up     - Deploy local infrastructure to K3s cluster"
	@echo "  make k3s-down   - Teardown local K3s infrastructure"

setup:
	@bash ./scripts/setup-local-env.sh

dev:
	@pnpm turbo run dev

build:
	@pnpm turbo run build
	@go build -v ./apps/...

test:
	@go test -v ./apps/...
	@uv run pytest
	@pnpm turbo run test

lint:
	@golangci-lint run ./apps/...
	@uv run ruff check .
	@pnpm turbo run lint

proto:
	@buf generate packages/proto

k3s-up:
	@bash ./scripts/deploy-k3s.sh up

k3s-down:
	@bash ./scripts/deploy-k3s.sh down
