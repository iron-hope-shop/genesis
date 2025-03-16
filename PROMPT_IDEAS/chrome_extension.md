<!-- 
GENESIS PROJECT SPECIFICATION - CHROME EXTENSION
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "ProductivTab"

PROJECT_DESCRIPTION = """
A productivity-focused Chrome extension that transforms the new tab page into a
personalized dashboard with task management, goal tracking, website blocking,
and focused work sessions, helping users stay organized and minimize distractions.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Browser Extension"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Custom new tab page dashboard",
    "Task and to-do list management",
    "Pomodoro timer with notifications",
    "Goal tracking and visualization",
    "Website blocking during focus sessions",
    "Time tracking and productivity analytics",
    "Daily quotes and motivation",
    "Calendar integration",
    "Weather widget",
    "Customizable layout and themes",
    "Offline functionality",
    "Cross-device sync",
    "Data export and backup options"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Material UI"
STATE_MANAGEMENT = "Redux"

EXTENSION_MANIFEST_VERSION = "3"
BACKEND_SERVICES = "Firebase for data sync"
STORAGE_SOLUTION = "Chrome Storage API + Firebase Firestore"

AUTH_TYPE = "Firebase Authentication"
AUTH_PROVIDERS = ["Google", "Email"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Component-based with background service workers"

EXTENSION_COMPONENTS = [
    "Popup UI - Extension controls accessible from toolbar",
    "Options page - User customization settings",
    "New Tab Page - Main dashboard interface",
    "Background script - Handles events, timing, and blocking",
    "Content scripts - For website interaction and blocking",
    "Service worker - For background processing in Manifest V3"
]

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Standard Chrome extension structure"

FOLDER_STRUCTURE = """
/public
  manifest.json - Extension manifest
  icons/ - Extension icons in various sizes
/src
  /components - React components
    /Dashboard - New tab dashboard components
    /Tasks - Task management components
    /Timer - Pomodoro timer components
    /Settings - Settings and customization components
  /pages
    NewTab.js - New tab page entry
    Popup.js - Popup UI entry
    Options.js - Options page entry
  /store - Redux store and slices
  /services - API and service integrations
  /utils - Utility functions
  /styles - CSS and theme definitions
  /background - Background scripts and service workers
  /content - Content scripts for page manipulation
/assets - Static assets like images and fonts
/config - Build and environment configuration
/scripts - Build and development scripts
/__tests__ - Test files
"""

<!--===============================================================================-->
<!-- BROWSER CONSIDERATIONS -->
<!--===============================================================================-->

BROWSER_COMPATIBILITY = [
    "Chrome/Chromium (primary)",
    "Edge (secondary)",
    "Firefox (possible adaptation with WebExtensions API)"
]

CHROME_API_USAGE = [
    "chrome.storage - User data persistence",
    "chrome.tabs - Tab management and monitoring",
    "chrome.alarms - Timer functionality",
    "chrome.notifications - User notifications",
    "chrome.webRequest - Website blocking functionality",
    "chrome.bookmarks - Bookmark integration (optional)",
    "chrome.identity - User authentication"
]

<!--===============================================================================-->
<!-- VERSION CONTROL & DISTRIBUTION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"

DISTRIBUTION_CHANNEL = "Chrome Web Store"
ALTERNATIVE_DISTRIBUTION = "Direct download for enterprise/teams"

<!--===============================================================================-->
<!-- CONTINUOUS INTEGRATION & DEPLOYMENT -->
<!--===============================================================================-->

CI_CD_PIPELINE = "GitHub Actions"

CI_STEPS = [
    "Linting and static analysis",
    "Unit and integration tests",
    "Build extension package",
    "Security scanning"
]

CD_STEPS = [
    "Version bumping",
    "Extension package generation",
    "Chrome Web Store submission",
    "Release announcements"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest + React Testing Library"

<!--===============================================================================-->
<!-- PRIVACY & SECURITY -->
<!--===============================================================================-->

PRIVACY_CONSIDERATIONS = [
    "Minimal permissions approach",
    "Local data storage preference",
    "Transparent data collection policies",
    "User data encryption",
    "No unnecessary tracking",
    "Clear privacy policy"
]

SECURITY_FEATURES = [
    "Content Security Policy implementation",
    "Regular security audits",
    "Third-party library vulnerability scanning",
    "Safe content script injection patterns",
    "Input validation and sanitization"
]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

DOCUMENTATION_REQUIREMENTS = """
- User guide and feature explanations
- Privacy policy and data handling practices
- Installation and setup instructions
- Customization options
- Troubleshooting guide
- Developer documentation for contribution
- Extension architecture overview
- Chrome API usage documentation
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a clean, performant Chrome extension with:
- Adherence to Chrome extension best practices
- Proper Manifest V3 implementation
- Efficient state management between components
- Graceful degradation when offline
- Thoughtful UX for new tab experience
- Careful permission handling
- Attention to startup and interaction performance
- Proper data synchronization across devices
- Clear onboarding for new users

Specific technical considerations:
- Use event-driven architecture for background processes
- Implement proper error handling for Chrome API calls
- Handle extension updates gracefully, including data migrations
- Consider memory usage on the new tab page
- Design with accessibility in mind
- Implement progressive enhancement for additional features

Pay special attention to:
- The permissions model (request minimum required)
- User data protection and privacy
- Battery and memory efficiency
- Smooth animations and transitions
""" 