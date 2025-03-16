<!-- 
GENESIS PROJECT SPECIFICATION - NODE.JS REST API
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "Express REST API"

PROJECT_DESCRIPTION = """
A scalable REST API built with Node.js and Express that provides secure 
endpoints for user management, data operations, and business logic. 
Includes authentication, authorization, and comprehensive documentation.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "API"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "User authentication and authorization",
    "Role-based access control",
    "CRUD operations for resources",
    "Data validation and sanitization",
    "Pagination, filtering, and sorting",
    "Rate limiting and request throttling",
    "Comprehensive logging and error handling",
    "API documentation"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Express"

DB_TYPE = "PostgreSQL"
DB_ORM = "Prisma"

AUTH_TYPE = "JWT"
AUTH_PROVIDERS = ["local", "oauth2"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Clean Architecture"

API_STYLE = "REST"

REST_RESOURCES = """
Auth: Register, login, refresh token, reset password
Users: CRUD operations, profile management
Products: CRUD operations, search, categorization
Orders: Create, read, update, status management
"""

ARCHITECTURE_DESCRIPTION = """
Follow a layered architecture with:
- Controllers: Handle HTTP requests/responses
- Services: Implement business logic
- Repositories: Data access layer
- Models: Data structures
- Middleware: Cross-cutting concerns
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"

FOLDER_STRUCTURE = """
/src
  /controllers - Request handlers
  /services - Business logic
  /repositories - Data access
  /models - Data models and validation schemas
  /middleware - Auth, logging, error handling
  /utils - Helper functions
  /config - Environment configuration
/tests - Test files
/docs - API documentation
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Container"
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

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest"

TESTING_STRATEGY = """
Unit tests for services and utilities
Integration tests for API endpoints
Test database with seeded test data
"""

SECURITY_SCANNING = "Yes"
DEPENDENCY_SCANNING = "Yes"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

LOGGING = "Winston"
MONITORING = "Prometheus"

HEALTH_CHECKS = "Yes"
READINESS_PROBE = "Yes"
LIVENESS_PROBE = "Yes"

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a production-ready API with:
- Secure authentication and authorization
- Comprehensive data validation
- Proper error handling with appropriate status codes
- Consistent response formats
- Performance optimization
- Thorough test coverage
- Detailed API documentation

Include a Postman collection for testing the API.
""" 