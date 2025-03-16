<!-- 
GENESIS PROJECT SPECIFICATION

This is a configuration file for your project generation.
Lines between HTML comment tags are comments and will be ignored.
Uncomment and modify options as needed.
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

<!-- Name of your project -->
PROJECT_NAME = "My Project"

<!-- Brief description of your project -->
PROJECT_DESCRIPTION = """
A lightweight web application that handles user input and provides responses.
No database is assumed by default - add database configuration only if needed.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

<!-- Type of application to generate -->
<!-- Options: Web, CLI, API, Library, Desktop, Mobile, Microservice -->
PROJECT_TYPE = "Web"

<!-- For CLI applications, uncomment and modify: -->
<!-- 
PROJECT_TYPE = "CLI"
CLI_MODE = "Command"  # Options: Command, Interactive, REPL
-->

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

<!-- List your core features below, uncomment additional ones as needed -->
FEATURES = [
    "User interface for data input",
    "Data processing logic",
    "Results display",
    # "User authentication", 
    # "Data export functionality",
    # "Administration panel",
    # "Reporting capabilities",
    # "API endpoints",
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

<!-- FRONTEND -->
<!-- Options: React, Vue, Angular, Svelte, Plain HTML/CSS/JS, None -->
FRONTEND = "Plain HTML/CSS/JS"

<!-- UI LIBRARIES -->
<!-- Options: None, Bootstrap, Tailwind, Material UI, Chakra UI -->
UI_FRAMEWORK = "None"

<!-- STATE MANAGEMENT (if using a framework) -->
<!-- 
STATE_MANAGEMENT = "Redux"  # For React: Redux, Context API, MobX, Recoil
STATE_MANAGEMENT = "Vuex"   # For Vue: Vuex, Pinia
STATE_MANAGEMENT = "NgRx"   # For Angular: NgRx, Services
-->

<!-- BACKEND -->
<!-- Options: Node.js, Python, Ruby, Go, PHP, Java, C#, None -->
BACKEND = "None"  # Default to static site

<!-- SERVER FRAMEWORK (if backend is chosen) -->
<!-- 
SERVER_FRAMEWORK = "Express"  # For Node.js: Express, Koa, Fastify, NestJS
SERVER_FRAMEWORK = "Flask"    # For Python: Flask, FastAPI, Django
SERVER_FRAMEWORK = "Rails"    # For Ruby: Rails, Sinatra
SERVER_FRAMEWORK = "Spring"   # For Java: Spring Boot, Jakarta EE
SERVER_FRAMEWORK = "ASP.NET"  # For C#: ASP.NET Core
SERVER_FRAMEWORK = "Gin"      # For Go: Gin, Echo, Fiber
-->

<!-- DATABASE -->
<!-- By default, no database is used -->
<!-- 
DB_TYPE = "PostgreSQL"  # Options: PostgreSQL, MySQL, MongoDB, SQLite, Redis, DynamoDB
DB_VERSION = "14"       # Specify version if applicable
DB_ORM = "Prisma"       # Options: Prisma, Sequelize, TypeORM, Mongoose, SQLAlchemy, Django ORM
-->

<!-- AUTHENTICATION -->
<!-- 
AUTH_TYPE = "JWT"       # Options: None, JWT, Session, OAuth, Firebase, Auth0
AUTH_PROVIDERS = ["local", "google", "github"]  # OAuth providers if applicable
-->

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

<!-- APPLICATION ARCHITECTURE -->
<!-- Options: MVC, MVVM, Layered, Clean, Hexagonal, Microservices, Serverless, Simple -->
<!-- ARCHITECTURE_PATTERN = "MVC" -->

<!-- API DESIGN (for backends/services) -->
<!-- Options: REST, GraphQL, RPC, SOAP, WebSockets -->
<!-- API_STYLE = "REST" -->

<!-- For REST APIs, describe your resources and endpoints: -->
<!-- 
REST_RESOURCES = """
Users: CRUD operations for user management
Products: GET for listing, POST for creating new
Orders: Complete order flow with status tracking
"""
-->

<!-- For complex architectures, describe your approach: -->
<!-- 
ARCHITECTURE_DESCRIPTION = """
Use a 3-layer architecture with:
- Presentation layer for UI/API controllers
- Business layer for core logic and validation
- Data access layer for database interactions

Include cross-cutting concerns like logging and error handling.
"""
-->

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

<!-- Folder structure preferences -->
<!-- PROJECT_STRUCTURE = "Standard"  # Options: Standard, Custom, Monorepo -->

<!-- For frontend projects: -->
<!-- 
COMPONENT_STYLE = "Functional"  # Options: Functional, Class-based
CSS_APPROACH = "CSS Modules"    # Options: Plain CSS, CSS Modules, Styled Components, Tailwind
-->

<!-- For custom folder structures, describe your approach: -->
<!-- 
FOLDER_STRUCTURE = """
/src
  /api - API endpoints
  /components - UI components
  /services - Business logic
  /models - Data models
  /utils - Helper utilities
/tests - All test files
/docs - Documentation
"""
-->

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

<!-- HOSTING -->
<!-- Default is static site hosting -->
HOSTING = "Static"  # Options: Static, Serverless, VPS, Container, PaaS

<!-- CLOUD PROVIDER -->
<!-- 
CLOUD_PROVIDER = "AWS"  # Options: AWS, GCP, Azure, Vercel, Netlify, Digital Ocean, None
-->

<!-- INFRASTRUCTURE AS CODE -->
<!-- 
INFRASTRUCTURE_CODE = "Terraform"  # Options: Terraform, CloudFormation, Pulumi, CDK, Serverless Framework
-->

<!-- SERVERLESS (if applicable) -->
<!-- 
SERVERLESS_PLATFORM = "AWS Lambda"  # Options: AWS Lambda, Google Cloud Functions, Azure Functions
-->

<!-- DATABASE HOSTING (if applicable) -->
<!-- 
DB_HOSTING = "AWS RDS"  # Options: AWS RDS, Google Cloud SQL, Azure Database, MongoDB Atlas
-->

<!-- CACHING STRATEGY -->
<!-- 
CACHING = "Redis"  # Options: Redis, Memcached, CDN, Application Cache
-->

<!-- CDN USAGE -->
<!-- CDN = "Cloudflare"  # Options: Cloudflare, AWS CloudFront, Akamai, Fastly -->

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

<!-- VERSION CONTROL -->
USE_GIT = "Yes"  # Options: Yes, No
<!-- INITIAL_BRANCH = "main" -->

<!-- BRANCHING STRATEGY -->
<!-- 
BRANCHING_STRATEGY = "GitFlow"  # Options: GitFlow, GitHub Flow, Trunk-Based
-->

<!-- GITHUB INTEGRATION -->
<!-- 
USE_GITHUB = "Yes"  # Options: Yes, No
GITHUB_REPO_DESCRIPTION = "A project generated with Genesis"
GITHUB_TOPICS = ["web", "javascript", "open-source"]
-->

<!-- GITHUB ACTIONS -->
<!-- 
USE_GITHUB_ACTIONS = "Yes"  # Options: Yes, No
-->

<!-- For CI/CD workflows, describe what you need: -->
<!-- 
CI_CD_WORKFLOWS = """
Build workflow:
- Install dependencies
- Run linting
- Run tests with coverage
- Build artifacts

Deployment workflow:
- Trigger on main branch
- Deploy to staging environment
- Run smoke tests
- Manual approval for production
"""
-->

<!-- GIT HOOKS -->
<!-- 
USE_GIT_HOOKS = "Yes"  # Options: Yes, No
GIT_HOOKS = "pre-commit,commit-msg,pre-push"  # Comma-separated list
-->

<!-- GITHUB TEMPLATES -->
<!-- 
INCLUDE_PR_TEMPLATE = "Yes"  # Options: Yes, No
INCLUDE_ISSUE_TEMPLATES = "Yes"  # Options: Yes, No
-->

<!-- CONVENTIONAL COMMITS -->
<!-- USE_CONVENTIONAL_COMMITS = "Yes"  # Options: Yes, No -->

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

<!-- CONTAINERIZATION -->
<!-- CONTAINERIZE = "Docker"  # Options: No, Docker, Podman -->

<!-- ORCHESTRATION -->
<!-- 
ORCHESTRATION = "Kubernetes"  # Options: None, Kubernetes, Docker Compose, ECS
REGISTRY = "Docker Hub"       # Options: Docker Hub, GitHub Container Registry, ECR, GCR
-->

<!-- For container setup, describe your requirements: -->
<!-- 
CONTAINER_SETUP = """
Multi-stage build with:
- Development image with dev dependencies
- Production image with minimal footprint
- Non-root user for security
- Health checks and proper signals handling
"""
-->

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

<!-- LINTING -->
USE_LINTER = "Yes"  # Options: Yes, No
<!-- 
LINTER_TYPE = "ESLint"          # For JS: ESLint, StandardJS
LINTER_TYPE = "Flake8"          # For Python: Flake8, Pylint, Black
LINTER_TYPE = "RuboCop"         # For Ruby: RuboCop
LINTER_TYPE = "Checkstyle"      # For Java: Checkstyle, PMD
LINTER_TYPE = "StyleCop"        # For C#: StyleCop
LINTER_TYPE = "golangci-lint"   # For Go: golangci-lint
-->

<!-- FORMATTING -->
<!-- 
CODE_FORMATTER = "Prettier"  # For JS: Prettier
CODE_FORMATTER = "Black"     # For Python: Black
CODE_FORMATTER = "gofmt"     # For Go: gofmt
-->

<!-- TESTING -->
INCLUDE_TESTS = "Yes"  # Options: Yes, No
<!-- 
TEST_FRAMEWORK = "Jest"         # For JS: Jest, Mocha, Cypress
TEST_FRAMEWORK = "Pytest"       # For Python: Pytest, Unittest
TEST_FRAMEWORK = "JUnit"        # For Java: JUnit, TestNG
TEST_FRAMEWORK = "xUnit"        # For C#: xUnit, NUnit
TEST_FRAMEWORK = "go test"      # For Go: Standard library testing
-->

<!-- For testing strategy, describe your approach: -->
<!-- 
TESTING_STRATEGY = """
Unit tests: Business logic and utilities
Integration tests: API endpoints 
End-to-end tests: Critical user flows
Use mocks for external services
Aim for 80% code coverage
"""
-->

<!-- CODE COVERAGE -->
<!-- CODE_COVERAGE_THRESHOLD = "80"  # Percentage (0-100) -->

<!-- STATIC ANALYSIS -->
<!-- 
STATIC_ANALYSIS = "SonarQube"  # Options: SonarQube, CodeClimate, DeepSource
-->

<!-- SECURITY SCANNING -->
<!-- 
SECURITY_SCANNING = "Yes"      # Options: Yes, No
DEPENDENCY_SCANNING = "Yes"    # Options: Yes, No
-->

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

<!-- DOCUMENTATION -->
INCLUDE_DOCS = "Yes"  # Options: Yes, No
<!-- 
DOCS_TYPE = "README"           # Options: README, Wiki, JSDoc, Sphinx, Swagger/OpenAPI
API_DOCS = "Swagger/OpenAPI"   # Options: None, Swagger/OpenAPI, API Blueprint
-->

<!-- For documentation requirements, describe your needs: -->
<!-- 
DOCUMENTATION_REQUIREMENTS = """
- Comprehensive README with setup instructions
- API documentation with examples
- Architecture diagram
- Development workflow guide
- Troubleshooting section
"""
-->

<!--===============================================================================-->
<!-- LEGAL & COMPLIANCE -->
<!--===============================================================================-->

<!-- LICENSE -->
LICENSE_TYPE = "MIT"  # Options: MIT, GPL, Apache, BSD, None

<!-- CODE OF CONDUCT -->
<!-- INCLUDE_CODE_OF_CONDUCT = "Yes"  # Options: Yes, No -->

<!-- CONTRIBUTING GUIDELINES -->
<!-- INCLUDE_CONTRIBUTING_GUIDE = "Yes"  # Options: Yes, No -->

<!-- COMPLIANCE REQUIREMENTS -->
<!-- 
COMPLIANCE = ["GDPR", "HIPAA", "SOC2"]  # List applicable compliance requirements
-->

<!--===============================================================================-->
<!-- ACCESSIBILITY & INTERNATIONALIZATION -->
<!--===============================================================================-->

<!-- ACCESSIBILITY -->
ACCESSIBILITY = "WCAG 2.1 AA"  # Options: None, WCAG 2.0 A, WCAG 2.1 AA, WCAG 2.1 AAA

<!-- INTERNATIONALIZATION (i18n) -->
<!-- 
I18N = "Yes"                   # Options: Yes, No
DEFAULT_LANGUAGE = "en"        # ISO language code
SUPPORTED_LANGUAGES = ["en", "es", "fr", "de"]  # List of language codes
-->

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

<!-- LOGGING -->
<!-- 
LOGGING = "Winston"            # For Node.js: Winston, Bunyan, Pino
LOGGING = "Logback"            # For Java: Logback, Log4j
LOGGING = "Logging"            # For Python: Logging, Loguru
-->

<!-- MONITORING -->
<!-- 
MONITORING = "Prometheus"      # Options: Prometheus, Datadog, New Relic
TRACING = "Jaeger"             # Options: Jaeger, Zipkin, OpenTelemetry
ALERTING = "Grafana"           # Options: Grafana, PagerDuty, OpsGenie
-->

<!-- HEALTH CHECKS -->
<!-- 
HEALTH_CHECKS = "Yes"          # Options: Yes, No
READINESS_PROBE = "Yes"        # Options: Yes, No 
LIVENESS_PROBE = "Yes"         # Options: Yes, No
-->

<!--===============================================================================-->
<!-- PERFORMANCE & SCALABILITY -->
<!--===============================================================================-->

<!-- PERFORMANCE TARGETS -->
<!-- 
RESPONSE_TIME_TARGET = "200ms"           # Target response time
REQUESTS_PER_SECOND = "1000"             # Target RPS
CONCURRENT_USERS = "500"                 # Target concurrent users
-->

<!-- SCALING STRATEGY -->
<!-- 
SCALING_STRATEGY = "Horizontal"          # Options: Horizontal, Vertical, Both
AUTO_SCALING = "Yes"                     # Options: Yes, No
-->

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

<!-- Any specific requirements or notes for the AI -->
SPECIAL_INSTRUCTIONS = """
Create a minimal, clean implementation.
Focus on readability and maintainability.
Include clear documentation on how to extend the project.

Additional considerations:
- Prefer functional programming patterns where appropriate
- Implement error handling throughout the application
- Use consistent coding style and naming conventions
- Include comments for complex logic but avoid unnecessary comments
""" 