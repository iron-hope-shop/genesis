<!-- 
GENESIS PROJECT SPECIFICATION - GRAPHQL API
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "Atlas API"

PROJECT_DESCRIPTION = """
A robust GraphQL API service for a content management and delivery platform,
enabling developers to create, manage, and deliver structured content across
multiple channels and applications with powerful querying capabilities.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "GraphQL API"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Flexible content modeling",
    "Content versioning and publishing workflow",
    "Asset management and manipulation",
    "Real-time subscriptions for content updates",
    "Role-based access control",
    "Nested relationships with efficient resolution",
    "Pagination and filtering",
    "Full-text search capabilities",
    "Localization and internationalization",
    "Webhooks for external integrations",
    "Caching and performance optimization",
    "Analytics and usage metrics",
    "Rate limiting and API throttling",
    "Comprehensive schema stitching",
    "Schema introspection and playground"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

LANGUAGE = "TypeScript"
FRAMEWORK = "Node.js"
GRAPHQL_IMPLEMENTATION = "Apollo Server"
DB_TYPE = "PostgreSQL"
CACHING = "Redis"
SEARCH = "Elasticsearch"
MESSAGE_QUEUE = "RabbitMQ"

ADDITIONAL_TECHNOLOGIES = [
    "DataLoader for batching and caching",
    "TypeGraphQL for schema definition",
    "Prisma as ORM",
    "GraphQL Shield for permissions",
    "GraphQL Subscriptions over WebSockets",
    "GraphQL Modules for code organization"
]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Modular monolith with domain-driven design"

API_STYLE = "GraphQL API with REST fallbacks"

DATA_ACCESS_PATTERN = """
- Repository pattern for data access
- Domain models separate from database models
- Business logic in domain services
- GraphQL resolvers use domain services
- Dependency injection for service composition
"""

SCALABILITY_APPROACH = """
- Horizontal scaling of stateless API nodes
- Database read replicas for read-heavy operations
- Connection pooling and query optimization
- Strategic caching at multiple levels
- Efficient batching with DataLoader
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Domain-driven modular structure"

FOLDER_STRUCTURE = """
/src
  /schema - GraphQL schema definition
    /typedefs - Type definitions
    /resolvers - Query and mutation resolvers
    /directives - Custom GraphQL directives
  /modules - Feature modules
    /content - Content management
      /schema - Module schema
      /resolvers - Module resolvers
      /services - Module services
      /repositories - Data access
      /models - Domain models
    /assets - Asset management
    /users - User management
    /search - Search functionality
    /webhooks - Webhook handling
  /core - Core functionality
    /auth - Authentication and authorization
    /caching - Caching infrastructure
    /database - Database connections and migrations
    /messaging - Message queue integration
    /logging - Logging infrastructure
    /monitoring - Metrics and monitoring
  /utils - Utility functions
  /config - Configuration
  /types - TypeScript type definitions
/prisma - Prisma schema and migrations
/scripts - Development and deployment scripts
/tests
  /unit - Unit tests
  /integration - Integration tests
  /e2e - End-to-end API tests
  /helpers - Test helpers
/docs - Documentation
"""

<!--===============================================================================-->
<!-- DATABASE DESIGN -->
<!--===============================================================================-->

DATABASE_DESIGN = """
Relational database (PostgreSQL) with:
- Normalized structure for core entities
- JSONB for flexible content fields
- Foreign key relationships with proper indexes
- Database-level triggers for audit logs
- Materialized views for complex reports
- Connection pooling for efficient resource usage
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
<!-- CONTINUOUS INTEGRATION & DEPLOYMENT -->
<!--===============================================================================-->

CI_CD_PIPELINE = "GitHub Actions"

CI_STEPS = [
    "Linting and type checking",
    "Unit and integration tests",
    "Schema validation",
    "API contract testing",
    "Security scanning",
    "Build verification"
]

CD_STEPS = [
    "Database migrations",
    "Deployment to staging",
    "Integration tests on staging",
    "Production deployment with approval",
    "API documentation generation",
    "Performance monitoring"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest"

<!--===============================================================================-->
<!-- API DESIGN & DOCUMENTATION -->
<!--===============================================================================-->

GRAPHQL_SCHEMA_DESIGN = [
    "Consistent naming conventions",
    "Interface and union types for polymorphism",
    "Input validation with custom scalars",
    "Pagination using Relay connection spec",
    "Error handling with consistent error types",
    "Deprecation strategy for evolving schema",
    "Leveraging directives for cross-cutting concerns"
]

API_DOCUMENTATION = [
    "Schema documentation using GraphQL descriptions",
    "Auto-generated documentation with GraphQL Docs",
    "API Playground for interactive exploration",
    "Usage examples for common operations",
    "Tutorial documentation for common use cases"
]

<!--===============================================================================-->
<!-- SECURITY & PERFORMANCE -->
<!--===============================================================================-->

SECURITY_FEATURES = [
    "Field-level access control",
    "Rate limiting and query complexity analysis",
    "Input validation and sanitization",
    "JWT-based authentication",
    "Request logging and auditing",
    "Prevention of GraphQL specific attacks",
    "API keys for machine-to-machine communication"
]

PERFORMANCE_OPTIMIZATIONS = [
    "Query cost analysis and limiting",
    "Dataloader for batching and caching",
    "Persisted queries for production use",
    "Automatic query depth limiting",
    "Strategic response caching",
    "Optimized database access patterns",
    "Query plan analysis and optimization"
]

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

MONITORING = "Prometheus + Grafana"
LOGGING = "ELK Stack"
TRACING = "OpenTelemetry"

METRICS_TO_TRACK = [
    "Query response times",
    "Error rates by operation",
    "Query complexity distribution",
    "Cache hit/miss rates",
    "Resolver execution times",
    "Database query performance",
    "API usage by client"
]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

DOCUMENTATION_REQUIREMENTS = """
- GraphQL schema documentation
- API usage guides and examples
- Authentication and authorization details
- Performance best practices
- Error handling guidelines
- Subscription setup instructions
- Local development setup
- Deployment and operation procedures
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a robust, scalable GraphQL API with:
- Clean separation of concerns between schema, resolvers, and business logic
- Efficient data fetching patterns to prevent N+1 query problems
- Proper error handling and error propagation
- Comprehensive permission model with field-level security
- Strategic approach to caching for performance optimization
- Graceful schema evolution strategy

Specific technical considerations:
- Implement cursor-based pagination for all list endpoints
- Use DataLoader pattern consistently for efficient data fetching
- Design a flexible but controlled content modeling system
- Implement subscription support with proper authentication
- Create a comprehensive testing strategy including schema tests
- Design resolver structure for optimal code reuse
- Use proper nullability in schema design
- Include detailed metrics and logging for performance monitoring
- Implement proper database indexing strategy
- Add comprehensive query validation and security measures

Special focus areas:
- Schema design that balances flexibility with performance
- Efficient handling of deeply nested relationships
- Proper versioning and deprecation strategy
- Comprehensive error handling with custom error types
""" 