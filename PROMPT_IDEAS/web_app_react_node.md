<!-- 
GENESIS PROJECT SPECIFICATION - REACT WEB APP WITH NODE.JS BACKEND
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "Modern Web Application"

PROJECT_DESCRIPTION = """
A responsive web application with React frontend and Node.js backend that allows users to 
create, manage, and share content. The app will include user authentication, data persistence,
and a clean, modern UI.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "User authentication and account management",
    "Create and edit content with rich text editor",
    "Save and organize content in collections",
    "Share content publicly or with specific users",
    "Search and filter content",
    "Responsive design for mobile and desktop",
    "Dark/light theme support"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Chakra UI"
STATE_MANAGEMENT = "Redux Toolkit"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Express"

DB_TYPE = "MongoDB"
DB_ORM = "Mongoose"

AUTH_TYPE = "JWT"
AUTH_PROVIDERS = ["local", "google", "github"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Clean Architecture"

API_STYLE = "REST"

REST_RESOURCES = """
Users: Authentication, profile management
Content: CRUD operations, media upload
Collections: Organizing content
Sharing: Permission management
Search: Query and filter content
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"
COMPONENT_STYLE = "Functional"
CSS_APPROACH = "Styled Components"

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

CI_CD_WORKFLOWS = """
Build workflow:
- Install dependencies
- Run linting
- Run tests with coverage
- Build artifacts

Deployment workflow:
- Deploy to staging on merge to develop
- Deploy to production on merge to main
"""

USE_GIT_HOOKS = "Yes"
GIT_HOOKS = "pre-commit,commit-msg,pre-push"

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

CONTAINERIZE = "Docker"
CONTAINER_SETUP = """
Multi-stage build with:
- Development image with dev dependencies
- Production image with minimal footprint
- Separate containers for frontend and backend
"""

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest"
CODE_COVERAGE_THRESHOLD = "80"

TESTING_STRATEGY = """
Unit tests for components and business logic
Integration tests for API endpoints
End-to-end tests for critical user flows
"""

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
DOCS_TYPE = "README"
API_DOCS = "Swagger/OpenAPI"

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a modern, maintainable application with clean code architecture.
Implement proper error handling and data validation.
Design the UI for excellent user experience with accessibility in mind.
Structure the codebase to be scalable and easy to extend with new features.
Include comprehensive setup instructions for local development.
""" 