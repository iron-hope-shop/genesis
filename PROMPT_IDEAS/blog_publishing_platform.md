<!-- 
GENESIS PROJECT SPECIFICATION - BLOG AND PUBLISHING PLATFORM
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "PenPeak"

PROJECT_DESCRIPTION = """
A modern publishing platform for bloggers, writers, and content creators.
Features a clean, distraction-free writing experience with powerful publishing
tools, audience analytics, and monetization options.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Rich text editor with markdown support",
    "Content organization with tags and categories",
    "Custom domains and site theming",
    "SEO optimization tools",
    "Audience analytics and insights",
    "Subscription and newsletter management",
    "Comments and community features",
    "Content monetization options",
    "Social media integration",
    "Mobile-optimized reading experience",
    "Scheduled publishing"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "Next.js"
UI_FRAMEWORK = "Tailwind CSS"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Next.js API Routes"

DB_TYPE = "PostgreSQL"
DB_ORM = "Prisma"

AUTH_TYPE = "NextAuth"
AUTH_PROVIDERS = ["email", "google", "twitter", "github"]

SEARCH = "Algolia"
EMAIL_SERVICE = "SendGrid"
MEDIA_STORAGE = "S3"

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Next.js Pages Router Architecture"

API_STYLE = "REST"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard Next.js"

FOLDER_STRUCTURE = """
/pages - Next.js pages and API routes
/components - React components
/lib - Shared utilities and services
/models - Data models and database schema
/styles - CSS and styling
/public - Static assets
/hooks - Custom React hooks
/contexts - React context providers
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Vercel"
CDN = "Vercel Edge Network"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"

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
DOCS_TYPE = "README and Storybook"

<!--===============================================================================-->
<!-- SEO & MARKETING -->
<!--===============================================================================-->

SEO_OPTIMIZATION = "Yes"
SITEMAP_GENERATION = "Yes"
OPEN_GRAPH_SUPPORT = "Yes"
ANALYTICS_PLATFORM = "Google Analytics and custom analytics"

<!--===============================================================================-->
<!-- ACCESSIBILITY & INTERNATIONALIZATION -->
<!--===============================================================================-->

ACCESSIBILITY = "WCAG 2.1 AA"

I18N = "Yes"
DEFAULT_LANGUAGE = "en"
SUPPORTED_LANGUAGES = ["en", "es", "fr"]

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a modern, user-friendly publishing platform with:
- Beautiful, distraction-free writing experience
- Fast, responsive reading experience for audiences
- Strong SEO capabilities built-in
- Clean, minimalist design with customization options
- Robust analytics for content creators

Focus on performance and reading experience while providing powerful tools
for writers. Implement proper image optimization, syntax highlighting for code
blocks, and responsive embeds for various media types.

Include sample content and themes to demonstrate the platform's capabilities.
""" 