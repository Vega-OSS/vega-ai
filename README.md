# Vega-AI

Vega-AI is a production-grade, self-hosted AI agent orchestration platform.

## Architecture
- Frontend: Next.js 16
- Backend-for-Frontend: Node.js
- API Gateway: Kong
- Control Plane: Go 1.23+
- Execution Engine: Python (FastAPI + uv)
- Multi-Agent Hub: Go
- MCP Server: Python/Go (FastMCP)
- Scheduler: Go
- Databases/Cache: PostgreSQL 17 + pgVector, Redis 8, Apache Kafka (KRaft)
- Observability: Prometheus, Grafana, OTel, Tempo, Loki
- Infrastructure: K3s, Istio, Helm, ArgoCD

## Project Structure
- `/apps`: Microservices and frontend applications
- `/packages`: Shared libraries and Protobuf definitions
- `/deploy`: Local and cloud deployment manifests (Helm, Kustomize, ArgoCD)
- `/migrations`: Database migration files
