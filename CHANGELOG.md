# CHANGELOG

## [0.5.0] - 2024-06-20
### Added
- New agent-based workflow to replace launcher script:
  - Created INSTRUCTIONS.md with comprehensive agent instructions
  - Updated README.md with agent-based approach documentation
  - Added support for configuration through conversational commands
  - Simplified project generation process for users

### Changed
- Updated the project structure documentation to include new files
- Made agent-based approach the recommended method, with launcher as legacy option
- Improved process flow documentation to cover both approaches
- Enhanced Quick Start section with clearer instructions

## [0.4.1] - 2024-06-19
### Changed
- Removed "Planned Features" section from README.md to focus on current capabilities
- Updated documentation to reflect current project status

## [0.4.0] - 2024-03-16
### Changed
- Completely restructured README.md to follow a professional documentation format
- Improved project structure diagram
- Enhanced wording in all documentation sections
- Added emojis to section headings for better visual appeal
- Improved styling of table of contents with category emojis
- Better aligned documentation components for readability

### Added
- New Command Reference & Prompt Guide section with:
  - Common post-generation commands and examples
  - Instructions for extending helper scripts
  - Templates for structuring future AI prompts
- Automatic Git repository reinitialization:
  - Always reinitializes Git when using GitHub integration
  - Added `-t` option to reinitialize Git without GitHub
  - Creates a default .gitignore file when reinitializing

## [0.3.0] - 2024-03-16
### Changed
- Moved images directory from `genesis/images` to root directory for easier asset management
- Improved documentation clarity around project structure

### Added
- Support for agent mode with YOLO capabilities
- Enhanced automation for GitHub repository management
- Added detailed instructions for using agent/YOLO mode in README and PROMPT.md
- Added GENESIS_IMAGES_ROOT environment variable to launcher.sh

## [0.2.0] - 2024-03-16
### Changed
- Completely revamped Genesis to be fully AI-driven
- Removed all predefined templates and scripts
- Simplified the project structure to core essentials:
  - Configuration
  - SDS documentation
  - AI prompts
  - Launcher script

### Removed
- Removed template directories and files
- Removed script-based generation approach
- Removed manual configuration templates
- Removed predefined deployment configs

### Added
- Enhanced AI-driven project generation
- Simplified launcher with automatic cleanup
- Improved documentation for AI-based workflow
- Direct natural language project modification

## [0.1.0] - 2024-03-16
### Added
- Initial Genesis seed initialized
- Basic project structure created 