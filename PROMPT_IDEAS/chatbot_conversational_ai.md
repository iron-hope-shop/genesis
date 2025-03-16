<!-- 
GENESIS PROJECT SPECIFICATION - CHATBOT/CONVERSATIONAL AI
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "AskAssist"

PROJECT_DESCRIPTION = """
An intelligent, multi-channel conversational AI platform that provides automated
customer support, information retrieval, and task execution across web, mobile,
and messaging channels, with natural language understanding capabilities and
seamless human handoff.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Conversational AI"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Natural language understanding and intent recognition",
    "Multi-channel support (web, mobile, messaging platforms)",
    "Knowledge base integration for information retrieval",
    "Context awareness and conversation memory",
    "Entity extraction and slot filling",
    "Sentiment analysis and emotion detection",
    "Multi-turn dialog management",
    "Task automation and API integrations",
    "Human agent handoff with conversation history",
    "Session management and user identification",
    "Conversation analytics and insights",
    "Multilingual support",
    "Voice and text interaction modes",
    "Conversation testing and validation",
    "Conversational flow designer"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

LANGUAGE = "Python"
NLU_FRAMEWORK = "Rasa NLU / Hugging Face Transformers"
DIALOG_MANAGEMENT = "Rasa Core / Custom State Machine"
ML_LIBRARIES = "TensorFlow, PyTorch, spaCy"

FRONTEND = "React"
WIDGET_FRAMEWORK = "Custom chat widget"

BACKEND = "FastAPI"
DB_TYPE = "MongoDB"
VECTOR_DB = "Pinecone or Weaviate"
CACHE = "Redis"
MESSAGE_QUEUE = "RabbitMQ or Kafka"

INTEGRATIONS = [
    "WhatsApp Business API",
    "Facebook Messenger",
    "Slack",
    "Microsoft Teams",
    "Twilio SMS",
    "Web Widget",
    "Mobile SDK"
]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Microservices"

CONVERSATION_PIPELINE = """
1. Channel Connector - Handles platform-specific messaging
2. Natural Language Understanding - Intent and entity extraction
3. Dialog Manager - Conversation state and flow management
4. Knowledge Retrieval - Information lookup and generation
5. External Integration Services - API calls and actions
6. Response Generator - Natural language generation
7. Analytics Engine - Conversation tracking and insights
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Microservices architecture with shared libraries"

FOLDER_STRUCTURE = """
/services
  /nlu - Natural language understanding service
    /models - Trained NLU models
    /training - Training data and pipelines
    /extractors - Custom entity extractors
  /dialog - Dialog management service
    /policies - Conversation policies
    /actions - Custom action handlers
    /states - Dialog state handlers
  /knowledge - Knowledge base service
    /retrieval - Information retrieval algorithms
    /data - Knowledge base content
  /integration - External API integration service
    /connectors - API connectors
    /actions - Integration actions
  /channels - Channel connectors
    /web - Web widget backend
    /whatsapp - WhatsApp connector
    /facebook - Facebook Messenger connector
    /slack - Slack connector
  /analytics - Analytics service
    /trackers - Conversation trackers
    /reports - Reporting generators
/frontend
  /web-widget - Web chat interface
  /admin-portal - Admin interface
/shared
  /models - Shared data models
  /utils - Utility functions
  /constants - Shared constants
  /clients - Internal service clients
/tools
  /training - Training utilities
  /testing - Testing utilities
  /deployment - Deployment scripts
/docs - Documentation
"""

<!--===============================================================================-->
<!-- AI AND ML CONSIDERATIONS -->
<!--===============================================================================-->

AI_COMPONENTS = [
    "Intent classification model",
    "Entity recognition model",
    "Sentiment analysis model",
    "Context resolution system",
    "Knowledge retrieval embeddings",
    "Response selection model",
    "Conversation summarization",
    "Fallback prediction"
]

DATA_REQUIREMENTS = [
    "Intents and training phrases",
    "Entity examples and synonyms",
    "Dialog flows and responses",
    "Knowledge base articles",
    "Conversation logs for training",
    "Test conversations"
]

MODEL_TRAINING = """
- Regular retraining pipeline with new conversations
- Cross-validation for intent classification
- Human-in-the-loop annotation for edge cases
- A/B testing of model improvements
- Evaluation metrics: F1 score, confusion matrix, confidence distribution
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Kubernetes"
CLOUD_PROVIDER = "AWS"
ML_INFRASTRUCTURE = "SageMaker for model training"
MODEL_SERVING = "TensorFlow Serving / Custom inference service"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"

<!--===============================================================================-->
<!-- CI/CD PIPELINE -->
<!--===============================================================================-->

CI_CD_PIPELINE = "GitHub Actions"

CI_STEPS = [
    "Linting and type checking",
    "Unit and integration tests",
    "NLU model evaluation",
    "Conversation flow testing",
    "Security scanning",
    "Build verification"
]

CD_STEPS = [
    "Model versioning and deployment",
    "Service deployment to staging",
    "End-to-end conversation testing",
    "Production deployment with approval",
    "Post-deployment verification"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "Flake8, Black"
CODE_FORMATTER = "Black"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Pytest"

<!--===============================================================================-->
<!-- CONVERSATION DESIGN -->
<!--===============================================================================-->

CONVERSATION_DESIGN_PRINCIPLES = [
    "Clear conversational purpose and scope",
    "Natural, concise dialog flows",
    "Consistent bot personality",
    "Graceful error handling and recovery",
    "Appropriate use of rich responses",
    "Clear indication of capabilities and limitations",
    "Efficient paths to resolution",
    "Strategic use of proactive suggestions"
]

CONVERSATION_TESTING = [
    "Intent classification testing",
    "Entity extraction validation",
    "End-to-end conversation testing",
    "Edge case handling validation",
    "Performance testing under load",
    "Cross-channel behavior consistency"
]

<!--===============================================================================-->
<!-- INTEGRATIONS & API -->
<!--===============================================================================-->

EXTERNAL_INTEGRATIONS = [
    "CRM system for customer data",
    "Ticketing system for escalations",
    "Authentication service",
    "Analytics platform",
    "Payment processing (if applicable)",
    "Email notification service"
]

API_SPECIFICATION = "OpenAPI / Swagger"

<!--===============================================================================-->
<!-- MONITORING & ANALYTICS -->
<!--===============================================================================-->

MONITORING = "Prometheus + Grafana"
LOGGING = "ELK Stack"
TRACING = "Jaeger"

CONVERSATION_ANALYTICS = [
    "Intent distribution",
    "Conversation completion rate",
    "Fallback frequency",
    "Conversation duration",
    "User satisfaction metrics",
    "Common user journeys",
    "Escalation reasons",
    "Response times"
]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

DOCUMENTATION_REQUIREMENTS = """
- Conversational design guidelines
- Intent and entity specifications
- Dialog flow documentation
- Integration API documentation
- Deployment and operations guide
- Analytics interpretation guide
- Model training procedures
- Testing and validation methodologies
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a robust, scalable conversational AI platform with:
- Natural, human-like conversation capabilities
- Effective dialog management for complex flows
- Robust fallback handling and graceful error recovery
- Seamless multi-channel experience
- Clear metrics for conversation success
- Efficient integration with external systems
- Strong focus on data privacy and security

Specific technical considerations:
- Design for conversation context preservation
- Implement efficient dialog state management
- Create a flexible entity extraction system
- Design for conversation testing and validation
- Implement proper message queue architecture
- Create a robust feedback loop for model improvement
- Design conversation analytics for actionable insights
- Implement efficient knowledge retrieval system
- Ensure proper handling of multi-language support

Special focus areas:
- Seamless handoff between bot and human agents
- Effective conversation design patterns
- User experience consistency across channels
- Proper handling of conversation context
- Ethical AI considerations and bias mitigation
- Privacy-by-design approach to user data
""" 