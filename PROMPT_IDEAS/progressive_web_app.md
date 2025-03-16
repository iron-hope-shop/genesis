<!-- 
GENESIS PROJECT SPECIFICATION - PROGRESSIVE WEB APP
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "FitTrackr"

PROJECT_DESCRIPTION = """
A fitness and health tracking Progressive Web App that works online and offline,
allowing users to record workouts, track nutrition, set goals, analyze progress,
and sync with health devices. The app provides a native-like experience across
all devices.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Progressive Web App"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Workout tracking and logging",
    "Exercise library with instructional content",
    "Nutrition tracking and meal planning",
    "Goal setting and progress visualization",
    "Health metrics dashboard",
    "Offline functionality and data synchronization",
    "Push notifications for reminders and achievements",
    "Social sharing and community features",
    "Integration with wearable devices",
    "Training plan recommendations",
    "Custom workout builder",
    "Barcode scanning for food logging",
    "Dark/light theme support",
    "Exportable progress reports"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React"
UI_FRAMEWORK = "Tailwind CSS"
STATE_MANAGEMENT = "React Context + Hooks"

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Express"
DB_TYPE = "MongoDB"

PWA_FEATURES = [
    "Service Workers for offline caching",
    "Web App Manifest for home screen installation",
    "IndexedDB for client-side storage",
    "Background Sync for offline data submission",
    "Push API for notifications",
    "Media Session API for workout audio",
    "Web Share API for social sharing",
    "Device orientation for exercise form feedback"
]

AUTH_TYPE = "JWT"
AUTH_PROVIDERS = ["Email", "Google", "Apple"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "JAMstack with serverless functions"

OFFLINE_STRATEGY = """
- Cache-first approach for static assets
- Stale-while-revalidate for API data
- Queue-based offline mutations with Background Sync
- IndexedDB for user data persistence
- Conflict resolution for data synchronization
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "React PWA with API services"

FOLDER_STRUCTURE = """
/client
  /public
    manifest.json - PWA manifest
    service-worker.js - Service worker entry
    icons/ - App icons in various sizes
  /src
    /components - React components
    /pages - Application routes
    /hooks - Custom React hooks
    /context - React context providers
    /services - API and device integration
    /utils - Utility functions
    /styles - CSS and Tailwind customization
    /assets - Static assets
    /workers - Web Workers and Service Worker logic
    /offline - Offline functionality
/server
  /api - API routes
  /controllers - Business logic
  /models - Data models
  /services - External services integration
  /utils - Server utilities
  /config - Configuration files
/shared - Code shared between client and server
  /types - TypeScript type definitions
  /validation - Validation schemas
  /constants - Shared constants
/docs - Documentation
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Static hosting + Serverless functions"
CLOUD_PROVIDER = "Vercel or Netlify"
CDN = "Cloudflare"
IMAGE_OPTIMIZATION = "Cloudinary or Imgix"

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
    "Lighthouse performance audits",
    "PWA validation",
    "Build verification"
]

CD_STEPS = [
    "Build optimization",
    "Asset compression",
    "Deployment to staging",
    "End-to-end testing",
    "Production deployment",
    "Post-deployment verification"
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
<!-- PWA SPECIFIC REQUIREMENTS -->
<!--===============================================================================-->

LIGHTHOUSE_TARGETS = """
- Performance: 90+
- Accessibility: 95+
- Best Practices: 95+
- SEO: 90+
- PWA: All checks passing
"""

OFFLINE_CAPABILITIES = [
    "Complete workout tracking while offline",
    "Cached exercise library and instructions",
    "Nutrition tracking offline",
    "Synchronization upon reconnection",
    "Offline progress visualization"
]

INSTALLATION_EXPERIENCE = [
    "Custom install prompt",
    "App tour on first install",
    "First-run experience",
    "App shortcuts for quick access"
]

<!--===============================================================================-->
<!-- PERFORMANCE OPTIMIZATION -->
<!--===============================================================================-->

PERFORMANCE_FEATURES = [
    "Code splitting and lazy loading",
    "Optimized asset loading strategy",
    "Preloading critical resources",
    "Adaptive loading based on network conditions",
    "Image optimization and WebP format",
    "Font optimization with swap strategy",
    "Prefetching for anticipated user journeys",
    "Virtualized lists for large datasets"
]

<!--===============================================================================-->
<!-- ACCESSIBILITY & INTERNATIONALIZATION -->
<!--===============================================================================-->

ACCESSIBILITY_FEATURES = [
    "WCAG 2.1 AA compliance",
    "Keyboard navigation",
    "Screen reader compatibility",
    "Reduced motion options",
    "High contrast mode",
    "Voice input compatibility"
]

INTERNATIONALIZATION = "Yes, using i18next"
LOCALES = ["English", "Spanish", "French", "German", "Japanese"]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

DOCUMENTATION_REQUIREMENTS = """
- User guide and feature explanations
- Offline capabilities documentation
- Installation instructions
- API documentation
- Developer setup and contribution guide
- Performance optimization documentation
- PWA capabilities and limitations
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a high-performance, accessible PWA with:
- Fast first contentful paint and time to interactive
- Smooth animations and transitions
- Reliable offline experience
- Proper PWA installation flow
- Native-like interaction patterns
- Effective use of push notifications (non-intrusive)
- Resilient data synchronization with conflict resolution
- Efficient battery usage, especially for fitness tracking

Specific technical considerations:
- Implement effective caching strategies for different content types
- Create a robust offline data synchronization system
- Optimize initial load performance for slower connections
- Implement graceful degradation for unsupported browsers
- Handle intermittent connectivity elegantly
- Use device features responsibly (e.g., GPS for run tracking)
- Implement proper security measures for health data
- Design with different device capabilities in mind
- Optimize animations for 60fps performance

Health and fitness specific considerations:
- Implement proper data visualization for progress tracking
- Create intuitive workout logging interfaces
- Design for quick and easy food tracking
- Integrate with Health APIs where available (HealthKit, Google Fit)
- Consider accessibility in exercise guidance
""" 