<!-- 
GENESIS PROJECT SPECIFICATION - E-COMMERCE PLATFORM
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "ShopSmart E-commerce"

PROJECT_DESCRIPTION = """
A complete e-commerce platform with product catalog, shopping cart, 
checkout process, payment integration, order management, and admin dashboard.
The platform supports both customer-facing features and administrative tools.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Product catalog with categories and search",
    "User registration and profile management",
    "Shopping cart and wishlist",
    "Secure checkout process",
    "Payment gateway integration",
    "Order tracking and history",
    "Admin dashboard",
    "Inventory management",
    "Discount and promotion system",
    "Customer reviews and ratings",
    "Responsive design for mobile and desktop"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "Next.js"
UI_FRAMEWORK = "Tailwind CSS"
STATE_MANAGEMENT = "Redux Toolkit"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Express"

DB_TYPE = "PostgreSQL"
DB_ORM = "Prisma"

AUTH_TYPE = "JWT"
AUTH_PROVIDERS = ["email", "google", "facebook"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Microservices"

API_STYLE = "REST"

ARCHITECTURE_DESCRIPTION = """
Divide the application into the following microservices:
- Product Service: Product catalog and inventory management
- User Service: Authentication, authorization, user profiles
- Cart Service: Shopping cart management
- Order Service: Order processing and management
- Payment Service: Payment processing and integration
- Search Service: Product search and filtering
- Admin Service: Administrative functions
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Monorepo"

FOLDER_STRUCTURE = """
/frontend
  /customer - Customer-facing Next.js app
  /admin - Admin dashboard Next.js app
  /shared - Shared components and utilities
/backend
  /services
    /product-service
    /user-service
    /cart-service
    /order-service
    /payment-service
    /search-service
    /admin-service
  /shared - Shared libraries and utilities
/infrastructure - Infrastructure as code
/docs - Documentation
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Container"
CLOUD_PROVIDER = "AWS"
INFRASTRUCTURE_CODE = "Terraform"

DB_HOSTING = "AWS RDS"
CACHING = "Redis"
CDN = "AWS CloudFront"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"
BRANCHING_STRATEGY = "GitFlow"

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

CONTAINERIZE = "Docker"
ORCHESTRATION = "Kubernetes"
REGISTRY = "AWS ECR"

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest"

SECURITY_SCANNING = "Yes"
DEPENDENCY_SCANNING = "Yes"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

<!--===============================================================================-->
<!-- LEGAL & COMPLIANCE -->
<!--===============================================================================-->

COMPLIANCE = ["PCI-DSS", "GDPR"]

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

LOGGING = "ELK Stack"
MONITORING = "Prometheus"
TRACING = "Jaeger"
ALERTING = "PagerDuty"

<!--===============================================================================-->
<!-- PERFORMANCE & SCALABILITY -->
<!--===============================================================================-->

RESPONSE_TIME_TARGET = "200ms"
REQUESTS_PER_SECOND = "5000"
SCALING_STRATEGY = "Horizontal"
AUTO_SCALING = "Yes"

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a scalable, secure e-commerce platform with:
- High performance product browsing and search
- Seamless and intuitive shopping experience
- Secure payment processing with PCI compliance
- Comprehensive admin tools for inventory and order management
- Detailed analytics and reporting
- Mobile-responsive design for all user interfaces

Include example products, categories, and user accounts for demonstration.
Implement proper SEO practices for product pages.
Design the platform to handle traffic spikes during sales events.
""" 