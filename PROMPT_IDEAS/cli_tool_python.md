<!-- 
GENESIS PROJECT SPECIFICATION - PYTHON CLI TOOL
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "DataWizard CLI"

PROJECT_DESCRIPTION = """
A command-line tool that processes, transforms, and analyzes data files.
It supports various file formats, offers data validation, and can output
results in multiple formats including CSV, JSON, and visualization.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "CLI"
CLI_MODE = "Command"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Data import from CSV, JSON, Excel, and SQL databases",
    "Data cleaning and validation",
    "Data transformation and aggregation",
    "Statistical analysis and reporting",
    "Data visualization generation",
    "Export to various formats",
    "Configurable via config files",
    "Extensible plugin system"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "None"
BACKEND = "Python"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"

FOLDER_STRUCTURE = """
/src
  /commands - CLI command implementations
  /core - Core business logic
  /parsers - Data parsers for different formats
  /transformers - Data transformation logic
  /exporters - Output formatters
  /visualization - Chart generation
  /utils - Helper utilities
/tests - Test files
/docs - Documentation
/examples - Example data and usage
"""

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "Flake8"
CODE_FORMATTER = "Black"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Pytest"
CODE_COVERAGE_THRESHOLD = "85"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
DOCS_TYPE = "Sphinx"

DOCUMENTATION_REQUIREMENTS = """
- Comprehensive CLI usage guide
- Example commands for common use cases
- API documentation for extending the tool
- Development guide for contributors
"""

<!--===============================================================================-->
<!-- DISTRIBUTION -->
<!--===============================================================================-->

PACKAGE_MANAGER = "Poetry"
PUBLISH_PACKAGE = "Yes"
PUBLISH_REGISTRY = "PyPI"

CREATE_BINARY = "Yes"
BINARY_PLATFORMS = ["linux", "macos", "windows"]
PACKAGING_TOOL = "PyInstaller"

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Focus on creating a robust, user-friendly CLI experience that follows UNIX principles.
Implement proper error handling with clear error messages.
Optimize for performance with large datasets.
Make the tool extendable through a plugin system.
Include comprehensive documentation with examples.
""" 