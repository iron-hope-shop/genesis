<!-- 
GENESIS PROJECT SPECIFICATION - CLOUD-NATIVE MICROSERVICES PLATFORM
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "Cloud-Native Service Mesh"

PROJECT_DESCRIPTION = """
A scalable, resilient microservices platform built with cloud-native principles.
The system includes service discovery, API gateway, observability stack,
and example microservices demonstrating best practices.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Microservice"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "API Gateway with rate limiting and routing",
    "Service discovery and registry",
    "Circuit breaking and fault tolerance",
    "Distributed tracing",
    "Centralized logging",
    "Metrics collection and visualization",
    "Health checking and self-healing",
    "Blue/green and canary deployments",
    "Configuration management",
    "Message broker integration",
    "Example microservices with CRUD operations"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

BACKEND = "Go"
SERVER_FRAMEWORK = "Gin"

DB_TYPE = "PostgreSQL"

MESSAGE_BROKER = "Kafka"
SERVICE_MESH = "Istio"
API_GATEWAY = "Kong"

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Microservices"

API_STYLE = "REST"

ARCHITECTURE_DESCRIPTION = """
Implement the following microservices:
- User Service: Authentication and user management
- Product Service: Product catalog and inventory
- Order Service: Order processing and management
- Notification Service: Email and push notifications
- Payment Service: Payment processing (simulated)

Each service should:
- Be independently deployable
- Own its data store
- Communicate via well-defined APIs
- Handle failures gracefully
- Scale independently
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Microservices"

FOLDER_STRUCTURE = """
/services
  /user-service
  /product-service
  /order-service
  /notification-service
  /payment-service
/api-gateway
/infrastructure
  /kubernetes - K8s manifests
  /terraform - IaC
  /monitoring - Prometheus, Grafana
  /logging - EFK stack
  /tracing - Jaeger
/docs - Documentation
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Kubernetes"
CLOUD_PROVIDER = "GCP"
INFRASTRUCTURE_CODE = "Terraform"

DB_HOSTING = "Cloud SQL"
CACHING = "Redis"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"
BRANCHING_STRATEGY = "Trunk-Based"

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

CONTAINERIZE = "Docker"
ORCHESTRATION = "Kubernetes"
REGISTRY = "Google Container Registry"

CONTAINER_SETUP = """
Multi-stage builds with:
- Small base images (e.g., alpine, distroless)
- Non-root users
- Resource limits
- Health check endpoints
- Container security scanning
"""

<!--===============================================================================-->
<!-- CI/CD -->
<!--===============================================================================-->

CI_CD_WORKFLOWS = """
Continuous Integration:
- Code quality checks and linting
- Unit and integration tests
- Security scanning
- Container building and scanning

Continuous Deployment:
- Automatic deployment to development environment
- Canary deployments to staging
- Blue/green deployments to production
- Automated rollbacks on failure
"""

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "golangci-lint"
CODE_FORMATTER = "gofmt"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "go test"

SECURITY_SCANNING = "Yes"
DEPENDENCY_SCANNING = "Yes"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

DOCUMENTATION_REQUIREMENTS = """
- Architecture overview and diagrams
- Service API documentation
- Deployment and operations guides
- Development setup instructions
- Runbooks for common issues
"""

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

LOGGING = "EFK Stack"
MONITORING = "Prometheus + Grafana"
TRACING = "Jaeger"
ALERTING = "AlertManager"

HEALTH_CHECKS = "Yes"
READINESS_PROBE = "Yes"
LIVENESS_PROBE = "Yes"

<!--===============================================================================-->
<!-- PERFORMANCE & SCALABILITY -->
<!--===============================================================================-->

SCALING_STRATEGY = "Horizontal"
AUTO_SCALING = "Yes"

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a production-ready microservices platform that demonstrates:
- Cloud-native architecture principles
- Zero-downtime deployments
- Comprehensive observability
- Fault tolerance and graceful degradation
- Horizontal scalability
- Security best practices

Include example workloads that demonstrate the platform capabilities.
Provide detailed documentation for both developers and operators.
Implement GitOps practices for infrastructure and application deployment.
""" 