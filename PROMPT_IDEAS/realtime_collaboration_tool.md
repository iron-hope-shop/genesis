<!-- 
GENESIS PROJECT SPECIFICATION - REAL-TIME COLLABORATION TOOL
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "CollabStream"

PROJECT_DESCRIPTION = """
A comprehensive real-time collaboration platform that enables teams to work
together on documents, designs, code, and projects with seamless synchronization,
rich communication tools, and integrated project management features, all within
a secure and scalable environment.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web Application with Real-time Features"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Real-time document editing with presence awareness",
    "Collaborative whiteboarding and diagramming",
    "Code editing with syntax highlighting",
    "Rich text and markdown support",
    "Comments and annotations",
    "Version history and change tracking",
    "Integrated video and audio conferencing",
    "Screen sharing and remote control",
    "File sharing and organization",
    "Task and project management",
    "Notifications and activity feeds",
    "Permissions and access control",
    "Search across all content",
    "Offline mode with synchronization",
    "Integration with third-party tools"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Material UI"
STATE_MANAGEMENT = "Redux + Redux Toolkit"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Express"
REALTIME_TECH = "WebSockets (Socket.io)"
CRDT_LIBRARY = "Yjs or Automerge"
EDITOR_FRAMEWORK = "ProseMirror or Slate"
WHITEBOARD_ENGINE = "Excalidraw or custom Canvas implementation"
CODE_EDITOR = "Monaco Editor"

DB_TYPE = "PostgreSQL + Redis"
FILE_STORAGE = "S3 or equivalent"
SEARCH = "Elasticsearch"
MEDIA_SERVER = "WebRTC (with Mediasoup or similar SFU)"

AUTH_TYPE = "JWT + OAuth2"
AUTH_PROVIDERS = ["Email", "Google", "Microsoft", "GitHub"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Microservices with event-driven communication"

REALTIME_ARCHITECTURE = """
- Client-side CRDT for conflict-free collaboration
- Server persistence layer with operational transforms
- WebSocket communication for real-time updates
- Presence protocol for user awareness
- Redis pub/sub for scaling WebSocket servers
- Authentication middleware for securing connections
- Rate limiting and throttling to prevent abuse
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Monorepo with shared packages"

FOLDER_STRUCTURE = """
/packages
  /client
    /src
      /components - UI components
      /hooks - Custom React hooks
      /pages - Application pages
      /features - Feature modules by domain
      /store - Redux store configuration
      /services - API and WebSocket services
      /utils - Utility functions
      /crdt - CRDT implementation and helpers
      /editors - Editor components (document, code, whiteboard)
      /media - Video/audio conferencing
  /server
    /src
      /api - REST API endpoints
      /websocket - WebSocket handlers
      /services - Business logic
      /models - Data models
      /persistence - Database access
      /realtime - Real-time collaboration logic
      /media - WebRTC signaling server
  /shared
    /src
      /types - TypeScript types
      /validation - Shared validation
      /constants - Shared constants
  /infrastructure
    /terraform - Infrastructure as code
    /docker - Docker configurations
    /scripts - Deployment scripts
/docs - Documentation
"""

<!--===============================================================================-->
<!-- COLLABORATION FEATURES -->
<!--===============================================================================-->

COLLABORATION_CAPABILITIES = [
    "Operational transforms for conflict resolution",
    "Cursor and selection presence",
    "User avatars and indicators",
    "Granular permissions (view, comment, edit, manage)",
    "Change attribution and history",
    "Lock mechanisms for critical sections",
    "Conflict resolution strategies",
    "Real-time validation and error checking"
]

OFFLINE_COLLABORATION = [
    "Local-first data architecture",
    "Conflict-free replicated data types (CRDTs)",
    "Optimistic UI updates with background sync",
    "Intelligent merge strategies",
    "Change queuing during offline periods"
]

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Kubernetes"
CLOUD_PROVIDER = "AWS"
CDN = "CloudFront"
INFRASTRUCTURE_CODE = "Terraform"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"

<!--===============================================================================-->
<!-- CONTINUOUS INTEGRATION & DEPLOYMENT -->
<!--===============================================================================-->

CI_CD_PIPELINE = "GitHub Actions"

CI_STEPS = [
    "Linting and type checking",
    "Unit and integration tests",
    "E2E collaboration tests",
    "Performance benchmarks",
    "Security scanning",
    "Build verification"
]

CD_STEPS = [
    "Database migrations",
    "Deployment to staging",
    "Smoke tests for real-time features",
    "Production deployment with canary release",
    "Post-deployment verification"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest, React Testing Library, Cypress"

<!--===============================================================================-->
<!-- PERFORMANCE & SCALABILITY -->
<!--===============================================================================-->

PERFORMANCE_CONSIDERATIONS = [
    "Efficient delta updates for minimal data transfer",
    "WebSocket connection management and recovery",
    "Throttling of high-frequency events",
    "Pagination and virtualization for large documents",
    "Efficient rendering of complex collaborative elements",
    "Data compression for network transfers",
    "Strategic caching of document states"
]

SCALABILITY_APPROACH = [
    "Horizontal scaling of WebSocket servers",
    "Redis pub/sub for cross-server communication",
    "Document sharding for large workspaces",
    "Read replicas for database scaling",
    "Stateless API servers with session affinity for WebSockets",
    "CDN for static assets and resources"
]

<!--===============================================================================-->
<!-- SECURITY CONSIDERATIONS -->
<!--===============================================================================-->

SECURITY_FEATURES = [
    "End-to-end encryption for sensitive content",
    "Granular permission model with RBAC",
    "Authentication with MFA support",
    "Audit logging for all changes",
    "Content validation and sanitization",
    "Rate limiting and DDoS protection",
    "Regular security audits and penetration testing"
]

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

MONITORING = "Prometheus + Grafana"
LOGGING = "ELK Stack"
TRACING = "OpenTelemetry"

COLLABORATION_METRICS = [
    "Concurrent users per document",
    "Websocket connection stability",
    "Conflict resolution frequency",
    "Synchronization latency",
    "Document load times",
    "Edit operation throughput",
    "Media streaming quality metrics"
]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

DOCUMENTATION_REQUIREMENTS = """
- User guides for all collaboration features
- API documentation for integrations
- Operational procedures and troubleshooting
- Security best practices
- Developer guides for extending the platform
- Performance tuning recommendations
- Deployment and scaling documentation
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a robust, real-time collaboration platform with:
- Seamless, low-latency collaborative editing experience
- Reliable conflict resolution with CRDTs
- Intuitive presence awareness features
- High performance even with many concurrent users
- Elegant offline experience with smooth synchronization
- Enterprise-grade security and permissions
- Scalable architecture for high user load

Specific technical considerations:
- Implement efficient WebSocket connection management and recovery
- Design a robust CRDT implementation for conflict-free editing
- Create optimized rendering for collaborative elements
- Implement proper media streaming with WebRTC
- Design for network resilience and poor connectivity
- Create an elegant offline experience with proper sync
- Focus on minimizing editing latency at scale
- Implement proper error handling for collaborative operations
- Optimize the performance of real-time updates
- Ensure security at all layers of the application

Special focus areas:
- User experience consistency across collaboration modes
- Fine-grained permissions model with inheritance
- Intelligent conflict resolution with user feedback
- Optimistic UI updates with proper error recovery
- Bandwidth optimization for resource-constrained environments
""" 