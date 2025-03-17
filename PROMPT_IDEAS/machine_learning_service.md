<!-- 
GENESIS PROJECT SPECIFICATION - MACHINE LEARNING MODEL SERVICE
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "ML Model API"

PROJECT_DESCRIPTION = """
A scalable service for deploying machine learning models with a RESTful API.
The service handles model versioning, A/B testing, inference logging,
performance monitoring, and provides a simple interface for model deployment.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "API"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "ML model deployment and serving",
    "Model versioning and lifecycle management",
    "A/B testing of different model versions",
    "Inference request/response logging",
    "Performance monitoring and alerts",
    "Batch prediction capabilities",
    "Authentication and rate limiting",
    "Model explanation for predictions",
    "Integration with ML model registries"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

BACKEND = "Python"
SERVER_FRAMEWORK = "FastAPI"

DB_TYPE = "PostgreSQL"
DB_ORM = "SQLAlchemy"

MACHINE_LEARNING = "scikit-learn,TensorFlow,PyTorch"
MODEL_SERVING = "TensorFlow Serving,ONNX Runtime"
FEATURE_STORE = "Redis"

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Microservices"

API_STYLE = "REST"

ARCHITECTURE_DESCRIPTION = """
Implement the following components:
- Model Registry: Store and version machine learning models
- Inference Service: Handle prediction requests
- Feature Service: Extract and transform features
- Monitoring Service: Track model performance and drift
- Batch Service: Process bulk prediction requests
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"

FOLDER_STRUCTURE = """
/app
  /api - API endpoints
  /models - Model loading and inference
  /services - Core business logic
  /schemas - Data validation schemas
  /monitoring - Performance monitoring
  /utils - Helper utilities
/infra - Infrastructure code
/tests - Test files
/docs - Documentation
/examples - Example client code and notebooks
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Kubernetes"
CLOUD_PROVIDER = "AWS"
ML_PLATFORM = "SageMaker"

<!--===============================================================================-->
<!-- CONTAINERIZATION & ORCHESTRATION -->
<!--===============================================================================-->

CONTAINERIZE = "Docker"
ORCHESTRATION = "Kubernetes"

CONTAINER_SETUP = """
Multi-stage builds with:
- Base image with common ML libraries
- CPU and GPU variants
- Resource limits for model inference
- Health checks for model loading
"""

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "Flake8"
CODE_FORMATTER = "Black"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Pytest"

<!--===============================================================================-->
<!-- MONITORING & OBSERVABILITY -->
<!--===============================================================================-->

LOGGING = "ELK Stack"
MONITORING = "Prometheus"
MODEL_MONITORING = "Evidently AI"

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a production-ready ML model serving platform with:
- Efficient model loading and inference
- Proper versioning of models and APIs
- Model performance monitoring with drift detection
- Detailed logging of requests and predictions
- Scalable architecture for handling prediction spikes
- Support for both real-time and batch predictions

Include examples of deploying common model types (classification, regression, NLP).
Implement best practices for ML model deployment and monitoring.
""" 