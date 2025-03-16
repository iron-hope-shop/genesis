<!-- 
GENESIS PROJECT SPECIFICATION - IOT PLATFORM
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "IoT Hub"

PROJECT_DESCRIPTION = """
A complete Internet of Things (IoT) platform for device management, data
collection, visualization, and analysis. The platform supports various protocols,
provides real-time monitoring, and enables automation through rules and triggers.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web + IoT"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Device registration and management",
    "Multiple protocol support (MQTT, HTTP, CoAP)",
    "Real-time data ingestion and processing",
    "Data visualization and dashboards",
    "Alert and notification system",
    "Rule-based automation",
    "OTA firmware updates",
    "Device grouping and tagging",
    "Historical data storage and analysis",
    "API for third-party integration",
    "User and permission management"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Ant Design"
VISUALIZATION = "D3.js,Plotly"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "NestJS"

DB_TYPE = "TimescaleDB"
REALTIME_DB = "InfluxDB"
MESSAGE_BROKER = "MQTT (Mosquitto)"
STREAM_PROCESSING = "Apache Kafka"

AUTH_TYPE = "JWT"
AUTH_PROVIDERS = ["local", "google", "microsoft"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Microservices"

API_STYLE = "REST and WebSockets"

ARCHITECTURE_DESCRIPTION = """
Implement the following components:
- Device Gateway: Handles device connections and protocol translation
- Data Ingestion Service: Processes and stores incoming device data
- Device Management Service: Manages device lifecycle and metadata
- Rules Engine: Processes rules and triggers actions
- Notification Service: Manages alerts and notifications
- Analytics Service: Provides data analysis and insights
- Admin API: Backend for the admin dashboard
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Microservices"

FOLDER_STRUCTURE = """
/services
  /device-gateway - Protocol handlers and device connections
  /data-ingestion - Data processing and storage
  /device-management - Device CRUD and firmware updates
  /rules-engine - Rule processing and actions
  /notification - Alert and notification handling
  /analytics - Data analysis and reporting
  /admin-api - Admin dashboard backend
/frontend
  /dashboard - Admin and monitoring dashboard
  /public-api-portal - API documentation and developer portal
/infrastructure - IaC and deployment
/docs - Documentation
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Kubernetes"
CLOUD_PROVIDER = "AWS"
INFRASTRUCTURE_CODE = "Terraform"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

CONTAINERIZE = "Docker"
ORCHESTRATION = "Kubernetes"

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest"

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

LOGGING = "ELK Stack"
MONITORING = "Prometheus + Grafana"
TRACING = "Jaeger"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

DOCUMENTATION_REQUIREMENTS = """
- Device integration guide
- API documentation
- Dashboard user guide
- Rule creation documentation
- Security best practices
- Deployment and setup instructions
"""

<!--===============================================================================-->
<!-- SECURITY -->
<!--===============================================================================-->

SECURITY_FEATURES = [
    "TLS for all communications",
    "Device authentication",
    "API key management",
    "Role-based access control",
    "Data encryption at rest",
    "Audit logging",
    "Certificate management"
]

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a scalable, secure IoT platform with:
- Support for high-volume data ingestion
- Low-latency data processing
- Flexible device management
- Intuitive dashboard for monitoring and management
- Comprehensive security features
- Scalable architecture for millions of devices

Include example device integrations for common protocols (MQTT, HTTP).
Implement proper time-series data management for efficient storage and querying.
Provide sample dashboard configurations and visualization templates.
""" 