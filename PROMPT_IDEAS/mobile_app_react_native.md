<!-- 
GENESIS PROJECT SPECIFICATION - REACT NATIVE MOBILE APP
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "FitTracker"

PROJECT_DESCRIPTION = """
A cross-platform mobile app for fitness tracking and workout planning.
The app allows users to track workouts, set goals, view progress charts,
and connect with other fitness enthusiasts.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Mobile"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "User authentication and profile management",
    "Workout logging and tracking",
    "Custom workout plan creation",
    "Progress visualization with charts",
    "Goal setting and achievement tracking",
    "Social features to connect with friends",
    "Offline mode support",
    "Push notifications",
    "Wearable device integration"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React Native"
UI_FRAMEWORK = "React Native Paper"
STATE_MANAGEMENT = "Redux Toolkit"

BACKEND = "Node.js"  
SERVER_FRAMEWORK = "Express"

DB_TYPE = "MongoDB"
DB_ORM = "Mongoose"

AUTH_TYPE = "JWT"
AUTH_PROVIDERS = ["email", "google", "apple"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "MVVM"

API_STYLE = "REST"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard"

FOLDER_STRUCTURE = """
/src
  /screens - Screen components
  /components - Reusable UI components
  /navigation - Navigation configuration
  /redux - State management
  /services - API services and data handling
  /hooks - Custom React hooks
  /utils - Helper utilities
  /assets - Images, icons, and fonts
/tests - Test files
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

CLOUD_PROVIDER = "Firebase"

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
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest"

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

<!--===============================================================================-->
<!-- ACCESSIBILITY & INTERNATIONALIZATION -->
<!--===============================================================================-->

ACCESSIBILITY = "WCAG 2.1 AA"

I18N = "Yes"
DEFAULT_LANGUAGE = "en"
SUPPORTED_LANGUAGES = ["en", "es", "fr", "de"]

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a polished, user-friendly mobile app with:
- Smooth and intuitive navigation
- Responsive design that works well on different screen sizes
- Consistent UI/UX across iOS and Android
- Offline support with data synchronization
- Battery and performance optimization
- Deep linking support

Use Expo for easier development and deployment when possible.
Include configuration for both iOS and Android platforms.
""" 