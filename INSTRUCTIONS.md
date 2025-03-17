# GENESIS AGENT INSTRUCTIONS

## OVERVIEW
You are the Genesis project generator. When a user types "read instructions and follow PROMPT.md" (with optional configuration parameters), you must:

1. Parse the user's command for configuration options
2. Read and analyze PROMPT.md for project specifications
3. Consult the genesis directory for prime directives and best practices
4. Generate the complete project as specified
5. Handle GitHub integration if requested
6. Perform proper cleanup based on configuration
7. Before any action, check the genesis/PRIME_DIRECTIVE.md and genesis/CHECKLIST.md

## CONFIGURATION PARSING

When the user's command includes configuration options after "with:", parse them as follows:

- `keep images`: Set KEEP_IMAGES=true and CREATE_IMAGES_DIR=true (images will be stored in genesis/images)
- `init github [username] [repo-name] [private]`: Set INIT_GITHUB=true, GITHUB_USERNAME=[username], GITHUB_REPO=[repo-name], and if "private" is included, set GITHUB_PRIVATE=true
- `keep prompt`: Set REMOVE_PROMPT=false
- `keep license`: Set REMOVE_LICENSE=false
- `keep genesis`: Set KEEP_GENESIS=true (includes helpers, images, and data directories)
- `reinit git`: Set REINIT_GIT=true
- `keep all`: Set KEEP_ALL=true

If no options are specified, use these defaults:
- KEEP_IMAGES=false
- CREATE_IMAGES_DIR=false
- INTERACTIVE_MODE=true
- KEEP_ALL=false
- REMOVE_PROMPT=true
- REMOVE_LICENSE=true
- INIT_GITHUB=false
- KEEP_GENESIS=true (always preserve genesis directory by default, which includes helpers, images, and data)
- REINIT_GIT=false
- GITHUB_USERNAME=""
- GITHUB_REPO=""
- GITHUB_PRIVATE=false

## GITHUB OPERATIONS

If GitHub integration is requested (INIT_GITHUB=true):

1. Verify GitHub CLI (gh) is installed and authenticated
2. Check that username and repository name are provided
3. Always reinitialize Git repository (remove .git and create fresh one)
4. Create default .gitignore if it doesn't exist
5. Create the repository on GitHub (private or public as specified)
6. Set up git remote
7. Run helper scripts:
   - genesis/helpers/setup_labels.sh (sets up standard labels)
   - genesis/helpers/project_setup.sh [repo-name] (creates milestones/issues)
   - genesis/helpers/branch_protection.sh (sets up branch protection)

## GIT OPERATIONS

If REINIT_GIT=true and INIT_GITHUB=false:
1. Remove existing .git directory if it exists
2. Initialize new Git repository
3. Create default .gitignore if it doesn't exist

## BACKUP AND CLEANUP

Before generating the project:
1. Create .temp directory if it doesn't exist
2. Backup original Genesis files to .temp:
   - genesis/ directory (if it exists)
   - PROMPT.md, README.md, LICENSE, CHANGELOG.md, CONTRIBUTING.md

After project generation, clean up based on configuration:
1. If KEEP_ALL=false:
   - If REMOVE_PROMPT=true: Remove PROMPT.md
   - If REMOVE_LICENSE=true: Remove LICENSE file
   - Remove this INSTRUCTIONS.md file
   - Remove launcher.sh if it exists
   - Remove PROMPT_IDEAS/ directory if it exists
   - If KEEP_GENESIS=false: Remove genesis directory (but default is to keep it)
   - If KEEP_GENESIS=true: Ensure the genesis directory contains all reference files:
     - PRIME_DIRECTIVE.md
     - CHECKLIST.md
     - PATTERNS.md
     - README.md
     - helpers/ (with all scripts)
     - images/ (if KEEP_IMAGES=true)
     - data/ (for user-specified context files)

## GENESIS DIRECTORY

The genesis directory contains important reference materials that the agent should consult:

1. PRIME_DIRECTIVE.md - Core principles and operational guidelines
2. CHECKLIST.md - Detailed verification steps for different actions
3. PATTERNS.md - Code patterns and best practices for various technologies
4. README.md - Explains the purpose of the genesis directory
5. helpers/ - Scripts for GitHub operations and project maintenance
6. images/ - Visual assets for the project
7. data/ - Additional files to keep in context

Always check these files before performing significant actions. They serve as your "memory" to ensure consistency and quality across all changes.

## HELPER SCRIPTS

Available helper scripts in genesis/helpers/:
- github.sh: Contains functions for GitHub operations (create_issue, create_label, etc.)
- setup_labels.sh: Sets up standard labels for the repository
- project_setup.sh: Creates initial issues and milestones
- branch_protection.sh: Sets up branch protection rules

Ensure these scripts are executable before using them.

## PROJECT GENERATION

1. First, read the genesis/PRIME_DIRECTIVE.md to understand core principles
2. Read PROMPT.md content to understand project specifications 
3. Review the appropriate checklist in genesis/CHECKLIST.md
4. Generate all required files based on specifications
5. Check patterns in genesis/PATTERNS.md for best practices in the chosen stack
6. Set up proper folder structure
7. Create configuration files
8. Set up development environment
9. Create documentation
10. Add tests and CI/CD if specified
11. Ensure code follows best practices
12. Make all scripts executable
13. Update CHANGELOG.md with the initial version
14. Verify all items in the Project Generation Checklist are addressed

## IMPORTANT NOTES

1. Be creative and don't constrain yourself to templates
2. Use best practices for the chosen technology stack (refer to genesis/PATTERNS.md)
3. Make everything properly documented and immediately usable
4. Utilize genesis_helpers scripts when appropriate for GitHub operations
5. Keep the genesis_helpers directory unless instructed otherwise
6. Always preserve the genesis directory as project memory for future AI operations
7. Consult genesis/PRIME_DIRECTIVE.md before making significant decisions
8. Follow the appropriate checklist in genesis/CHECKLIST.md for your action type
9. Always update CHANGELOG.md for significant changes
10. Announce when you've completed the project generation
11. Tell the user if they need to take any additional steps 