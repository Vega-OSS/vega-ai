# Contributing to Vega-AI

Thank you for your interest in contributing to Vega-AI!

## Development Setup

1. Prerequisites: `go` 1.23+, `python` 3.12+, `uv`, `node` 20+, `pnpm`, `docker`/`k3d`.
2. Bootstrap environment:
   ```bash
   make setup
   ```
3. Run local dev environment:
   ```bash
   make dev
   ```

## Pull Request Guidelines

- Create a feature branch off `main`.
- Adhere strictly to **atomic commits** (max 1 business logic file per commit or max 3 config files per commit).
- Ensure all tests pass (`make test`) and code is properly formatted (`make lint`).
- Fill out the PR template completely when opening your PR.
