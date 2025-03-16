#!/bin/bash

# Genesis Project Generator Launcher
# This script launches the Genesis project generator with all configuration handled via command-line

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Default settings
KEEP_IMAGES=false
CREATE_IMAGES_DIR=false
INTERACTIVE_MODE=true
KEEP_ALL=false
REMOVE_PROMPT=true
REMOVE_LICENSE=true
INIT_GITHUB=false
KEEP_HELPERS=true
REINIT_GIT=false
GITHUB_USERNAME=""
GITHUB_REPO=""
GITHUB_PRIVATE=false

# Show ASCII universe art
display_universe() {
    echo -e "${PURPLE}"
    echo "                  *       +                    "
    echo "            '                  |               "
    echo "        ()    .-.,=\"\`\`\"=.    - o -           "
    echo "              '=/_       \\     |              "
    echo "           *   |  '=._    |                   "
    echo "                \\     \`=./\`,        '         "
    echo "             .   '=.__.=' \`='      *          "
    echo "    +                         +               "
    echo "         O      *        '       .            "
    echo -e "${NC}"
}

# Show help message
show_help() {
    echo -e "${CYAN}Genesis Project Generator${NC}"
    echo -e "\nUsage: ./launcher.sh [options]"
    echo -e "\nOptions:"
    echo -e "  ${GREEN}-h${NC}\tShow this help message"
    echo -e "  ${GREEN}-i${NC}\tKeep images from Genesis (implies creating images directory)"
    echo -e "  ${GREEN}-k${NC}\tKeep all Genesis files (don't clean up)"
    echo -e "  ${GREEN}-p${NC}\tKeep PROMPT.md file"
    echo -e "  ${GREEN}-l${NC}\tKeep LICENSE file"
    echo -e "  ${GREEN}-n${NC}\tNon-interactive mode (future feature)"
    echo -e "  ${GREEN}-g${NC}\tInitialize GitHub repository"
    echo -e "  ${GREEN}-u${NC}\tGitHub username (required with -g)"
    echo -e "  ${GREEN}-r${NC}\tGitHub repository name (required with -g)"
    echo -e "  ${GREEN}-x${NC}\tMake GitHub repository private"
    echo -e "  ${GREEN}-m${NC}\tDon't keep genesis_helpers directory"
    echo -e "  ${GREEN}-t${NC}\tReinitialize Git repository (without GitHub)"
    echo -e "\nExample:"
    echo -e "  ${YELLOW}./launcher.sh -i${NC}\t\t# Keep images (creates images directory automatically)"
    echo -e "  ${YELLOW}./launcher.sh -g -u myuser -r myrepo${NC}\t# Initialize GitHub repository"
    echo -e "  ${YELLOW}./launcher.sh -t${NC}\t\t# Reinitialize Git repository (fresh history)"
}

# Check GitHub requirements
check_github_requirements() {
    if [[ "$INIT_GITHUB" == true ]]; then
        # Check if GitHub CLI is installed
        if ! command -v gh &> /dev/null; then
            echo -e "${RED}Error: GitHub CLI (gh) is not installed.${NC}"
            echo "Please install GitHub CLI from https://cli.github.com/"
            exit 1
        fi
        
        # Check if logged in to GitHub CLI
        if ! gh auth status &> /dev/null; then
            echo -e "${RED}Error: Not logged in to GitHub CLI.${NC}"
            echo "Please run 'gh auth login' to authenticate with GitHub"
            exit 1
        fi
        
        # Check for required parameters
        if [[ -z "$GITHUB_USERNAME" || -z "$GITHUB_REPO" ]]; then
            echo -e "${RED}Error: GitHub username and repository name are required when using -g.${NC}"
            echo "Please provide them with -u <username> and -r <repo_name>"
            exit 1
        fi
    fi
}

# Reinitialize Git repository - remove existing .git and create a fresh one
reinit_git_repo() {
    echo -e "${GREEN}Reinitializing Git repository...${NC}"
    
    # Check if .git directory exists
    if [ -d ".git" ]; then
        echo -e "${YELLOW}Removing existing Git repository...${NC}"
        rm -rf .git
    fi
    
    # Initialize new Git repository
    git init
    echo -e "${GREEN}Fresh Git repository initialized${NC}"
    
    # Add a default .gitignore if it doesn't exist
    if [ ! -f ".gitignore" ]; then
        echo -e "${YELLOW}Creating default .gitignore...${NC}"
        cat > .gitignore << EOL
# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Editor directories and files
.idea/
.vscode/
*.swp
*.swo

# Temporary files
.temp/
tmp/
temp/

# Logs
logs/
*.log
EOL
        echo -e "${GREEN}Default .gitignore created${NC}"
    fi
}

# Initialize GitHub repository
init_github_repo() {
    echo -e "${GREEN}Initializing GitHub repository...${NC}"
    
    # Reinitialize Git repository first (always reinit when using GitHub)
    reinit_git_repo
    
    local privacy=""
    if [[ "$GITHUB_PRIVATE" == true ]]; then
        privacy="--private"
    else
        privacy="--public"
    fi
    
    # Create the repository on GitHub
    gh repo create "$GITHUB_USERNAME/$GITHUB_REPO" $privacy --confirm
    
    # Set up git locally
    git remote add origin "https://github.com/$GITHUB_USERNAME/$GITHUB_REPO.git"
    
    echo -e "${GREEN}GitHub repository initialized: https://github.com/$GITHUB_USERNAME/$GITHUB_REPO${NC}"
    
    # Run the helper scripts to set up labels and initial project structure
    echo -e "${GREEN}Setting up GitHub repository with standard labels...${NC}"
    genesis_helpers/setup_labels.sh
    
    echo -e "${GREEN}Setting up initial project structure...${NC}"
    genesis_helpers/project_setup.sh "$GITHUB_REPO"
    
    echo -e "${GREEN}Setting up branch protection...${NC}"
    genesis_helpers/branch_protection.sh
}

# Create temp directory and move original files
setup_temp_dir() {
    echo -e "${GREEN}Setting up temporary directory...${NC}"
    mkdir -p .temp
    
    # Move original Genesis files to .temp
    if [[ -d "genesis" ]]; then
        cp -r genesis .temp/
    fi
    
    # Backup images directory if it exists
    if [[ -d "images" ]]; then
        cp -r images .temp/
    fi
    
    cp PROMPT.md .temp/ 2>/dev/null || true
    cp README.md .temp/ 2>/dev/null || true
    cp LICENSE .temp/ 2>/dev/null || true
    cp CHANGELOG.md .temp/ 2>/dev/null || true
    cp CONTRIBUTING.md .temp/ 2>/dev/null || true
    
    # Backup genesis_helpers but don't remove them
    if [[ -d "genesis_helpers" ]]; then
        cp -r genesis_helpers .temp/
    fi
    
    echo -e "${GREEN}Original files backed up to .temp/${NC}"
}

# Show welcome message
echo -e "${BLUE}=====================================${NC}"
display_universe
echo -e "${GREEN}Genesis Project Generator${NC}"
echo -e "${BLUE}=====================================${NC}"

# Parse command-line arguments
while getopts "hikplngmu:r:xt" opt; do
  case $opt in
    h)
      show_help
      exit 0
      ;;
    i)
      KEEP_IMAGES=true
      CREATE_IMAGES_DIR=true  # Automatically imply creating images directory
      echo -e "${YELLOW}Will keep Genesis images and create images directory${NC}"
      ;;
    k)
      KEEP_ALL=true
      echo -e "${YELLOW}Will keep all Genesis files${NC}"
      ;;
    p)
      REMOVE_PROMPT=false
      echo -e "${YELLOW}Will keep PROMPT.md file${NC}"
      ;;
    l)
      REMOVE_LICENSE=false
      echo -e "${YELLOW}Will keep LICENSE file${NC}"
      ;;
    n)
      INTERACTIVE_MODE=false
      echo -e "${YELLOW}Will run in non-interactive mode${NC}"
      ;;
    g)
      INIT_GITHUB=true
      echo -e "${YELLOW}Will initialize GitHub repository${NC}"
      ;;
    m)
      KEEP_HELPERS=false
      echo -e "${YELLOW}Will not keep genesis_helpers directory${NC}"
      ;;
    t)
      REINIT_GIT=true
      echo -e "${YELLOW}Will reinitialize Git repository${NC}"
      ;;
    u)
      GITHUB_USERNAME="$OPTARG"
      echo -e "${YELLOW}GitHub username: $GITHUB_USERNAME${NC}"
      ;;
    r)
      GITHUB_REPO="$OPTARG"
      echo -e "${YELLOW}GitHub repository: $GITHUB_REPO${NC}"
      ;;
    x)
      GITHUB_PRIVATE=true
      echo -e "${YELLOW}GitHub repository will be private${NC}"
      ;;
    \?)
      echo -e "${RED}Invalid option: -$OPTARG${NC}" >&2
      show_help
      exit 1
      ;;
  esac
done

# Check if genesis_helpers directory exists
if [ ! -d "genesis_helpers" ]; then
    echo -e "${RED}Error: genesis_helpers directory not found.${NC}"
    echo "This directory contains essential scripts for GitHub integration."
    exit 1
fi

# Check if helper scripts are executable
for script in genesis_helpers/*.sh; do
    if [ -f "$script" ] && [ ! -x "$script" ]; then
        echo -e "${YELLOW}Making $script executable...${NC}"
        chmod +x "$script"
    fi
done

# Check GitHub requirements if needed
check_github_requirements

# Check if PROMPT.md exists
if [ ! -f "PROMPT.md" ]; then
    echo -e "${RED}Error: PROMPT.md file not found.${NC}"
    echo "Please make sure PROMPT.md exists in the current directory."
    exit 1
fi

# Display configuration summary
echo -e "${GREEN}Configuration:${NC}"
echo -e "  🖼️  Keep images: ${YELLOW}$KEEP_IMAGES${NC}"
echo -e "  📁 Create images dir: ${YELLOW}$CREATE_IMAGES_DIR${NC}"
echo -e "  📝 Keep PROMPT.md: ${YELLOW}$([ "$REMOVE_PROMPT" == "false" ] && echo "true" || echo "false")${NC}"
echo -e "  📜 Keep LICENSE: ${YELLOW}$([ "$REMOVE_LICENSE" == "false" ] && echo "true" || echo "false")${NC}"
echo -e "  🧹 Keep all files: ${YELLOW}$KEEP_ALL${NC}"
echo -e "  🤖 Keep helpers: ${YELLOW}$KEEP_HELPERS${NC}"
echo -e "  🔄 Reinit Git: ${YELLOW}$REINIT_GIT${NC}"
echo -e "  🔗 Init GitHub: ${YELLOW}$INIT_GITHUB${NC}"
if [[ "$INIT_GITHUB" == true ]]; then
    echo -e "  👤 GitHub user: ${YELLOW}$GITHUB_USERNAME${NC}"
    echo -e "  📦 GitHub repo: ${YELLOW}$GITHUB_REPO${NC}"
    echo -e "  🔒 GitHub private: ${YELLOW}$GITHUB_PRIVATE${NC}"
fi
echo -e "  💬 Interactive mode: ${YELLOW}$INTERACTIVE_MODE${NC}"

# Export settings as environment variables for the AI session
export GENESIS_KEEP_IMAGES=$KEEP_IMAGES
export GENESIS_CREATE_IMAGES_DIR=$CREATE_IMAGES_DIR
export GENESIS_KEEP_ALL=$KEEP_ALL
export GENESIS_REMOVE_PROMPT=$REMOVE_PROMPT
export GENESIS_REMOVE_LICENSE=$REMOVE_LICENSE
export GENESIS_INTERACTIVE=$INTERACTIVE_MODE
export GENESIS_INIT_GITHUB=$INIT_GITHUB
export GENESIS_GITHUB_USERNAME=$GITHUB_USERNAME
export GENESIS_GITHUB_REPO=$GITHUB_REPO
export GENESIS_GITHUB_PRIVATE=$GITHUB_PRIVATE
export GENESIS_KEEP_HELPERS=$KEEP_HELPERS
export GENESIS_IMAGES_ROOT=true  # New variable to indicate images are in root directory
export GENESIS_REINIT_GIT=$REINIT_GIT

# Create temp directory and back up original files
setup_temp_dir

# Reinitialize Git repository if requested
if [[ "$REINIT_GIT" == true && "$INIT_GITHUB" == false ]]; then
    reinit_git_repo
fi

# Initialize GitHub repository if requested
if [[ "$INIT_GITHUB" == true ]]; then
    init_github_repo
fi

# Create system prompt with essential instructions
SYSTEM_PROMPT="# Genesis - AI Project Generator

You are tasked with bootstrapping a complete project based on the user's specification. Follow these steps:

1. Analyze the user's requirements carefully
2. Generate a complete project structure based on those requirements
3. Create all necessary files, configurations, and documentation
4. Set up development environment, testing, and CI/CD as specified
5. Ensure the project follows best practices for the specified technologies
6. Clean up based on the provided environment variables:
   - GENESIS_KEEP_IMAGES=$KEEP_IMAGES 
   - GENESIS_CREATE_IMAGES_DIR=$CREATE_IMAGES_DIR
   - GENESIS_KEEP_ALL=$KEEP_ALL
   - GENESIS_REMOVE_PROMPT=$REMOVE_PROMPT
   - GENESIS_REMOVE_LICENSE=$REMOVE_LICENSE
   - GENESIS_INIT_GITHUB=$INIT_GITHUB
   - GENESIS_GITHUB_USERNAME=$GITHUB_USERNAME
   - GENESIS_GITHUB_REPO=$GITHUB_REPO
   - GENESIS_GITHUB_PRIVATE=$GITHUB_PRIVATE
   - GENESIS_KEEP_HELPERS=$KEEP_HELPERS

Available helper scripts in genesis_helpers/:
- github.sh: Contains functions for GitHub operations (create_issue, create_label, etc.)
- setup_labels.sh: Sets up standard labels for the repository
- project_setup.sh: Creates initial issues and milestones
- branch_protection.sh: Sets up branch protection rules

Remember to:
- Be creative and don't constrain yourself to templates
- Use best practices for the chosen technology stack
- Make everything properly documented and immediately usable
- Utilize genesis_helpers scripts when appropriate for GitHub operations
- Keep the genesis_helpers directory unless GENESIS_KEEP_HELPERS is false"

# Read the prompt file
PROMPT_CONTENT=$(cat PROMPT.md)

echo -e "\n${GREEN}Reading your project specification...${NC}"
echo -e "${BLUE}-------------------------------------${NC}"
echo -e "${YELLOW}Opening interactive chat session...${NC}"
echo -e "${BLUE}-------------------------------------${NC}"

# Launch cursor with the system prompt and user prompt
cursor --system-message="$SYSTEM_PROMPT" --send-prompt "$PROMPT_CONTENT"

echo -e "${GREEN}Project generation completed!${NC}"
echo -e "${BLUE}=====================================${NC}"

# Cleanup will be handled by the AI within the cursor session
exit 0 