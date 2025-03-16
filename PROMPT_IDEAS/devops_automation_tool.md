<!-- 
GENESIS PROJECT SPECIFICATION - DEVOPS AUTOMATION TOOL
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "DevOps Automator"

PROJECT_DESCRIPTION = """
A comprehensive tool for automating DevOps workflows, including infrastructure
provisioning, configuration management, CI/CD pipeline setup, and monitoring.
The tool provides a unified interface for managing the entire DevOps lifecycle.
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
    "Infrastructure as Code (IaC) template generation",
    "CI/CD pipeline configuration and management",
    "Kubernetes manifest generation and validation",
    "Security compliance scanning and reporting",
    "Environment configuration management",
    "Monitoring and alerting setup",
    "Drift detection and remediation",
    "Backup and disaster recovery automation",
    "Cost optimization recommendations"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

BACKEND = "Go"

INFRASTRUCTURE_TOOLS = "Terraform,Pulumi,Kubernetes,Helm"
CI_CD_TOOLS = "GitHub Actions,CircleCI,Jenkins,ArgoCD"
SECURITY_TOOLS = "Trivy,SonarQube,OWASP,Checkov"
MONITORING_TOOLS = "Prometheus,Grafana,Elastic Stack"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"

FOLDER_STRUCTURE = """
/cmd - Command-line entry points
/pkg
  /providers - Cloud provider integrations
  /templates - Template generation
  /scanner - Security scanning
  /config - Configuration management
  /utils - Helper utilities
/internal - Private application logic
/templates - Template resources
/docs - Documentation
/examples - Example configurations
/tests - Test files
"""

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"
RELEASE_STRATEGY = "Semantic Versioning"

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "golangci-lint"
CODE_FORMATTER = "gofmt"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "go test"
TEST_COVERAGE_THRESHOLD = "80"

<!--===============================================================================-->
<!-- DISTRIBUTION -->
<!--===============================================================================-->

PACKAGE_MANAGER = "Go Modules"
CREATE_BINARY = "Yes"
BINARY_PLATFORMS = ["linux", "macos", "windows"]
PACKAGE_REGISTRY = "GitHub Releases"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
DOCS_TYPE = "Markdown + Hugo"

DOCUMENTATION_REQUIREMENTS = """
- Command reference and examples
- Getting started guide
- Advanced usage tutorials
- Integration guides for different tools
- Best practices for common scenarios
- Troubleshooting guide
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a robust DevOps automation tool with:
- Intuitive command-line interface with clear help documentation
- Flexible plugin architecture for extending functionality
- Comprehensive error handling and debugging information
- Secure handling of credentials and sensitive information
- Support for multiple cloud providers and technologies
- Idempotent operations to prevent configuration drift

Focus on making the tool easy to use for DevOps engineers while providing
advanced capabilities for complex scenarios. Include extensive examples
for common use cases and comprehensive documentation.
""" 