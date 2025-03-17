<!-- 
GENESIS PROJECT SPECIFICATION - DESKTOP APPLICATION
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "CodeStudio"

PROJECT_DESCRIPTION = """
A cross-platform desktop code editor and development environment designed for
modern web development, featuring intelligent code completion, integrated
terminal, git integration, extension marketplace, and real-time collaboration.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Desktop Application"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Syntax highlighting for multiple languages",
    "Intelligent code completion and suggestions",
    "Integrated terminal",
    "Git and GitHub integration",
    "Extension marketplace",
    "Real-time collaboration",
    "Project management and workspaces",
    "Customizable themes and UI",
    "Integrated debugging tools",
    "Markdown preview",
    "Integrated documentation viewer",
    "Code snippets and templates",
    "Search and replace with regex support",
    "Multiple cursor editing",
    "Split pane and tab management",
    "Auto-update system",
    "Performance metrics and profiling"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

DESKTOP_FRAMEWORK = "Electron"
FRONTEND = "React"
UI_FRAMEWORK = "Custom components + Styled Components"
STATE_MANAGEMENT = "Redux Toolkit"

EDITOR_ENGINE = "Monaco Editor (VS Code engine)"
TERMINAL_INTEGRATION = "xterm.js"
FILE_SYSTEM_ACCESS = "Node.js fs module + chokidar"

BACKEND_SERVICES = "Node.js for local services"
LANGUAGE_SERVICES = "Language Server Protocol (LSP)"
DB_TYPE = "SQLite for local storage"

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Main process + multiple renderer processes"

ELECTRON_PROCESSES = """
- Main Process: Application lifecycle, window management, menu handling
- Renderer Process (Editor): UI components, Monaco editor integration
- Renderer Process (Terminal): Terminal emulation
- Renderer Process (Preview): Markdown/HTML preview
- Background Services: File watching, git operations, language services
"""

IPC_PATTERN = "Electron IPC for process communication"

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Electron application structure"

FOLDER_STRUCTURE = """
/src
  /main - Electron main process code
    main.ts - Entry point
    /services - Main process services
    /windows - Window management
    /menu - Application menu definitions
  /renderer - Renderer process code
    /components - React components
    /pages - Main application screens
    /hooks - Custom React hooks
    /store - Redux store and slices
    /services - Renderer services
    /utils - Utility functions
    /themes - Theme definitions
  /shared - Code shared between processes
    /types - TypeScript interfaces and types
    /constants - Shared constants
    /utils - Shared utilities
  /preload - Preload scripts for IPC bridging
  /extensions - Extension API and management
  /languages - Language support definitions
/assets - Static assets
/build - Build configuration and scripts
/dist - Build output
/test - Test files
/docs - Documentation
"""

<!--===============================================================================-->
<!-- PLATFORM SUPPORT -->
<!--===============================================================================-->

PLATFORMS = ["Windows", "macOS", "Linux"]

PLATFORM_SPECIFIC_FEATURES = [
    "Native menus for each OS",
    "Proper window management following OS conventions",
    "Native notifications",
    "Proper installers for each platform",
    "Auto-updates through appropriate channels",
    "macOS Touch Bar support",
    "Windows Jump List integration",
    "Linux desktop integration"
]

<!--===============================================================================-->
<!-- PACKAGING & DISTRIBUTION -->
<!--===============================================================================-->

BUILD_SYSTEM = "Electron Forge / Electron Builder"

DISTRIBUTION_METHODS = [
    "Windows: NSIS installer + Microsoft Store",
    "macOS: DMG + Mac App Store",
    "Linux: AppImage, Snap, Flatpak, deb, rpm"
]

AUTO_UPDATE = "Yes, using electron-updater"

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
    "Build verification for all platforms",
    "E2E testing with Spectron"
]

CD_STEPS = [
    "Version bumping",
    "Building platform-specific packages",
    "Code signing",
    "Distribution to stores and websites",
    "Release notes generation"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest + React Testing Library + Spectron"

<!--===============================================================================-->
<!-- PERFORMANCE & SECURITY -->
<!--===============================================================================-->

PERFORMANCE_CONSIDERATIONS = [
    "Memory usage optimization",
    "Startup time improvements",
    "Background process management",
    "File watcher efficiency",
    "Language service optimization",
    "Renderer process reuse"
]

SECURITY_FEATURES = [
    "Proper node integration isolation",
    "Context isolation for preload scripts",
    "Content Security Policy implementation",
    "Safe file system access patterns",
    "Careful extension sandbox",
    "Regular security audits"
]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

DOCUMENTATION_REQUIREMENTS = """
- User guide and feature explanations
- Keyboard shortcut reference
- Extension development API documentation
- Theme customization guide
- Building and contributing guidelines
- Architecture overview
- Troubleshooting guide
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a high-performance, professional-grade desktop application with:
- Native feel on each supported platform
- Fast startup and responsive UI
- Efficient memory usage
- Proper error handling and crash recovery
- Comprehensive logging for troubleshooting
- Complete keyboard navigation support
- Accessibility compliance
- Clean architecture separating UI from business logic

Special considerations for Electron-based applications:
- Implement proper security measures (CSP, contextIsolation, etc.)
- Optimize IPC patterns to reduce overhead
- Use process sandboxing appropriately
- Implement efficient window management
- Ensure proper memory cleanup for closed windows
- Use web workers for CPU-intensive operations
- Implement efficient auto-update mechanisms
- Handle offline scenarios gracefully

Additional focus areas:
- Implement a proper extension API with isolation
- Create a strong theming system that can be customized
- Build an efficient file watching system that doesn't drain battery
""" 