<!-- 
GENESIS PROJECT SPECIFICATION - MODERN CONTENT MANAGEMENT SYSTEM
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "FlexiCMS"

PROJECT_DESCRIPTION = """
A flexible, headless content management system that enables content creation,
management, and delivery through RESTful and GraphQL APIs. The system supports
custom content types, workflows, versioning, and has a modern admin interface.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Headless CMS architecture with API-first approach",
    "Custom content type definition and management",
    "Rich text editing with asset management",
    "Content versioning and publishing workflows",
    "User roles and permissions",
    "Localization and internationalization",
    "Media library with image processing",
    "Content scheduling and drafts",
    "Search and filtering capabilities",
    "Modern admin dashboard",
    "Webhooks and integrations"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Material UI"
STATE_MANAGEMENT = "Redux Toolkit"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "NestJS"

DB_TYPE = "MongoDB"
DB_ORM = "Mongoose"

AUTH_TYPE = "JWT"
MEDIA_STORAGE = "S3"
SEARCH = "Elasticsearch"

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Hexagonal"

API_STYLE = "Both REST and GraphQL"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Monorepo"

FOLDER_STRUCTURE = """
/packages
  /admin-ui - React-based admin interface
  /api - NestJS API server
  /schema - Shared schemas and types
  /utils - Shared utilities
/docs - Documentation
/examples - Example implementations and templates
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Containerized"
CLOUD_PROVIDER = "AWS"
CDN = "CloudFront"

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
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger and GraphQL Playground"

DOCUMENTATION_REQUIREMENTS = """
- User guide for content editors
- Developer documentation for API consumers
- Administrator guide for system setup
- Content modeling best practices
- Extension and plugin development guide
"""

<!--===============================================================================-->
<!-- ACCESSIBILITY & INTERNATIONALIZATION -->
<!--===============================================================================-->

ACCESSIBILITY = "WCAG 2.1 AA"

I18N = "Yes"
DEFAULT_LANGUAGE = "en"
SUPPORTED_LANGUAGES = ["en", "es", "fr", "de", "ja"]

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a modern, developer-friendly CMS with:
- Clean, intuitive admin interface for content editors
- Robust API design for content consumption
- Flexible content modeling capabilities
- High performance content delivery
- Extensible plugin architecture
- Comprehensive documentation for all user types

The system should support both simple blogs and complex content structures.
Focus on developer experience for API consumers as well as user experience
for content editors. Implement proper content versioning and workflow capabilities.
""" 