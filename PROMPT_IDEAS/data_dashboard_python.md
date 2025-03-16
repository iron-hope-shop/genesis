<!-- 
GENESIS PROJECT SPECIFICATION - DATA ANALYSIS DASHBOARD
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "Analytics Dashboard"

PROJECT_DESCRIPTION = """
A comprehensive data analysis and visualization dashboard built with Python.
The application allows users to connect to various data sources,
perform analysis, create interactive visualizations, and generate reports.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Data source connections (CSV, Excel, SQL, APIs)",
    "Data cleaning and preprocessing tools",
    "Statistical analysis capabilities",
    "Interactive data visualizations",
    "Dashboard creation and customization",
    "Automated report generation",
    "Scheduled data refresh",
    "User authentication and role-based access",
    "Export capabilities (PDF, Excel, PNG)"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Material UI"

BACKEND = "Python"
SERVER_FRAMEWORK = "FastAPI"

DB_TYPE = "PostgreSQL"
DB_ORM = "SQLAlchemy"

AUTH_TYPE = "JWT"

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "MVC"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"

FOLDER_STRUCTURE = """
/backend
  /app
    /api - API endpoints
    /core - Business logic
    /models - Data models
    /services - Data processing services
    /utils - Helper utilities
  /tests - Backend tests
/frontend
  /src
    /components - React components
    /pages - Dashboard pages
    /services - API services
    /hooks - Custom React hooks
    /utils - Helper utilities
  /tests - Frontend tests
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Container"
CLOUD_PROVIDER = "AWS"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

CONTAINERIZE = "Docker"
ORCHESTRATION = "Docker Compose"

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "Flake8"  
CODE_FORMATTER = "Black"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Pytest"

<!--===============================================================================-->
<!-- DATA PROCESSING & ANALYTICS -->
<!--===============================================================================-->

DATA_PROCESSING_LIBS = ["pandas", "numpy", "scipy", "scikit-learn"]
VISUALIZATION_LIBS = ["plotly", "dash", "matplotlib", "seaborn"]
DATABASE_LIBS = ["psycopg2", "sqlalchemy", "alembic"]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

DOCUMENTATION_REQUIREMENTS = """
- User guide for dashboard usage
- Admin guide for configuration and management
- Technical documentation for API endpoints
- Data processing workflow documentation
- Installation and deployment instructions
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create an intuitive, performant data dashboard with:
- Clean, responsive UI that adapts to different screen sizes
- Fast data loading with appropriate caching strategies
- Highly interactive visualizations with zoom, filtering, and tooltip capabilities
- Efficient data processing for large datasets
- Comprehensive documentation for both users and developers

Include example data sources and pre-configured dashboards for demonstration.
Optimize for performance when handling large datasets.
""" 