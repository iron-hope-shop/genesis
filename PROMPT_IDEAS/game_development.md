<!-- 
GENESIS PROJECT SPECIFICATION - GAME DEVELOPMENT
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "Astral Frontiers"

PROJECT_DESCRIPTION = """
A cross-platform 2D action-adventure game with procedurally generated levels,
real-time combat mechanics, progression systems, and multiplayer capabilities.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Game"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Procedural world generation",
    "Real-time combat system",
    "Character progression and skill trees",
    "Item and equipment system",
    "Multiplayer co-op (2-4 players)",
    "Physics-based puzzles and interactions",
    "NPC interaction and dialog system",
    "Quest and mission system",
    "Save and load functionality",
    "Cross-platform availability",
    "Controller and keyboard/mouse support",
    "Dynamic day/night cycle",
    "Narrative-driven campaign"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

GAME_ENGINE = "Unity"
SCRIPTING_LANGUAGE = "C#"
ART_STYLE = "2D pixel art with modern lighting"
SOUND_ENGINE = "FMOD"

NETWORKING = "Photon PUN"
ANALYTICS = "Unity Analytics"
IN_APP_PURCHASES = "Yes"

PLATFORM_TARGETS = [
    "Windows", "macOS", "Linux",
    "iOS", "Android",
    "Nintendo Switch", "Xbox", "PlayStation"
]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Component-based architecture"

PATTERNS = [
    "State Machine for character states",
    "Observer pattern for game events",
    "Singleton for service managers",
    "Object pooling for performance optimization",
    "Command pattern for input handling",
    "Scriptable Objects for game data"
]

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Unity project structure"

FOLDER_STRUCTURE = """
/Assets
  /Scripts
    /Core - Game systems and managers
    /Player - Player character logic
    /Enemy - Enemy AI and behavior
    /World - World generation and environment
    /UI - User interface elements
    /Networking - Multiplayer functionality
    /Utility - Helper functions and extensions
  /Art
    /Characters - Player and NPC sprites
    /Environment - Tiles, backgrounds, effects
    /UI - Interface elements
  /Audio
    /Music - Background music
    /SFX - Sound effects
  /Prefabs - Reusable game objects
  /Resources - Runtime-loadable assets
  /Scenes - Game levels and menus
  /StreamingAssets - External data files
  /ThirdParty - External plugins and packages
/ProjectSettings - Unity project configuration
/Packages - Unity package manager dependencies
/Builds - Build outputs for different platforms
/Documentation - Game design documents and development notes
"""

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"
USE_GITLFS = "Yes for art assets"

<!--===============================================================================-->
<!-- CONTINUOUS INTEGRATION & DEPLOYMENT -->
<!--===============================================================================-->

CI_CD_PIPELINE = "Unity Cloud Build + GitHub Actions"

CI_STEPS = [
    "Build verification for all target platforms",
    "Automated testing",
    "Asset bundle generation",
    "Distribution to test environments"
]

CD_STEPS = [
    "Build for release candidates",
    "Distribution to beta testers via TestFlight/Google Play",
    "Submission to stores and platforms",
    "Post-release monitoring"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "StyleCop"
CODE_FORMATTER = "Rider built-in formatter"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Unity Test Framework"

PERFORMANCE_TARGETS = """
- Minimum 60 FPS on target platforms
- Max load time of 5 seconds
- Memory usage under 1GB
- Battery efficiency for mobile platforms
"""

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"

DOCUMENTATION_REQUIREMENTS = """
- Game Design Document (GDD)
- Technical design diagrams
- Asset creation guidelines
- Coding standards and patterns
- Build and deployment procedures
- Level design documentation
- Player controls and UI/UX guidelines
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a polished, performant game with the following considerations:
- Optimize for mobile platforms with configurable quality settings
- Implement a modular design to allow for future expansion
- Use asset bundles for downloadable content
- Set up proper error handling with analytics for crash reporting
- Create a streamlined build pipeline for all target platforms
- Design a flexible save system that can handle version upgrades
- Implement accessibility features (configurable controls, text size, color blindness support)

Include systems for:
- Player progression and persistence
- Achievements and leaderboards
- In-game economy
- Tutorial and onboarding
- Environment interaction
- Combat balancing

Consider integration with platform-specific features (achievements, cloud saves) where appropriate.
""" 