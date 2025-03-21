<div align="center">
  <img src="./genesis/images/banner.gif" alt="Genesis - AI-Powered Project Generator" width="100%">
</div>

<div align="center">
  
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  
</div>

---

<div align="center">
  <h2>📖 Contents</h2>
</div>

<details open="open">
<summary><strong>Getting Started</strong></summary>

- [Introduction](#1-introduction)
  - [Overview](#11-overview)
  - [Objectives](#12-objectives)
- [Quick Start](#2-quick-start)
  - [Installation](#21-installation)
  - [Basic Usage](#22-basic-usage)

</details>

<details open="open">
<summary><strong>Core Documentation</strong></summary>

- [How Genesis Works](#3-how-genesis-works)
  - [Project Structure](#31-project-structure)
  - [GitHub Integration](#32-github-integration)
  - [Process Flow](#33-process-flow)
- [Development](#4-development)
  - [Prerequisites](#41-prerequisites)
  - [Configuration](#42-configuration)
  - [Contributing](#43-contributing)

</details>

<details open="open">
<summary><strong>Project Information</strong></summary>

- [What You Get](#5-what-you-get)
- [Command Reference & Prompt Guide](#6-command-reference--prompt-guide)
  - [Common Post-Generation Commands](#61-common-post-generation-commands)
  - [Extending Helper Scripts](#62-extending-helper-scripts)
  - [Structuring Future Prompts](#63-structuring-future-prompts)
- [Project Status](#7-project-status)
  - [Implemented Features](#implemented-features)
- [License](#8-license)
- [See Also](#9-see-also)

</details>

---

## **1. Introduction**

### **1.1 Overview**
Genesis is an AI-powered project generator that transforms a simple project specification into a complete, working codebase. It eliminates the need for templates and boilerplate by dynamically generating everything based on your requirements. With powerful GitHub automation and a focus on maintainable code, Genesis helps you launch new projects faster and with better quality.

### **1.2 Objectives**
- **Rapid Bootstrapping:** Quickly convert your project specification into a working project
- **Automated Configuration:** Generate tailored configuration files, scripts, and documentation
- **GitHub Integration:** Set up repositories with labels, milestones, and branch protection
- **Extensibility:** Helper scripts remain available for ongoing project maintenance
- **Clean Output:** Genesis removes itself after generation, leaving only your project files
- **AI-Driven:** Uses artificial intelligence to understand and implement your requirements

---

## **2. Quick Start**

### **2.1 Installation**
Clone the repository and navigate into the project directory:
```bash
git clone https://github.com/your-org/genesis.git
cd genesis
```

### **2.2 Basic Usage**

Genesis now offers two methods to generate projects:

#### Method 1: Agent-Based Approach (Recommended)
1. Open this project in Cursor IDE
2. Review and customize `PROMPT.md` with your project specifications (this is your project specification template)
   - For inspiration, check the `PROMPT_IDEAS/` directory which contains templates for various project types
   - You can copy from one of these templates into your PROMPT.md as a starting point
3. Tell the agent: **"read instructions and follow PROMPT.md"**

You can also specify configuration options:
```
read instructions and follow PROMPT.md with:
- keep images
- init github johndoe my-project private
- keep prompt
- keep license
- keep genesis
```

The `genesis` directory contains important reference materials that help the AI maintain consistency and quality in your project. It is kept by default and now includes the helpers, images, and data directories.

This agent-based approach eliminates the need for the launcher script and provides a more conversational experience.

#### Method 2: Launcher Script (Legacy)
Alternatively, you can still use the traditional launcher script:

```bash
./launcher.sh [options]
```

Configuration options:
```
-h  Show help message
-i  Keep images from Genesis (creates images directory automatically)
-k  Keep all Genesis files (don't clean up)
-p  Keep PROMPT.md file
-l  Keep LICENSE file
-n  Non-interactive mode (future feature)
-g  Initialize GitHub repository
-u  GitHub username (required with -g)
-r  GitHub repository name (required with -g)
-x  Make GitHub repository private
-m  Don't keep genesis_helpers directory
-t  Reinitialize Git repository (fresh history)
```

**Important**: 
- When using the `-g` option, Git is automatically reinitialized to create a fresh repository.
- If you're not using GitHub but want a fresh Git history, use the `-t` option.
- Run Genesis in agent mode with YOLO mode enabled for best results.

This will open an interactive chat where you can:
- Refine your project requirements
- Make real-time adjustments
- Review and approve generated components

For a complete GitHub setup with the legacy method, use:
```bash
./launcher.sh -g -u your_username -r repo_name -x
```

---

## **3. How Genesis Works**

### **3.1 Project Structure**
Genesis has a simple, minimalist design with these key components:

```
project/
├── PROMPT.md           # Your project specification template
├── INSTRUCTIONS.md     # Instructions for the AI agent
├── README.md           # This documentation
├── PROMPT_IDEAS/       # Example templates for various project types (removed during generation)
│   ├── web_app_react_node.md
│   ├── mobile_app_react_native.md
│   ├── blockchain_cryptocurrency_app.md
│   └── ...             # Many more project type templates
├── genesis/            # Core reference directory for AI operations
│   ├── PRIME_DIRECTIVE.md # Core principles and guidelines
│   ├── CHECKLIST.md    # Verification checklists for different actions
│   ├── PATTERNS.md     # Code patterns and best practices
│   ├── README.md       # Explains the genesis directory's purpose
│   ├── helpers/        # Helper scripts for GitHub integration and project setup
│   │   ├── github.sh       # Core GitHub API integration functions
│   │   ├── setup_labels.sh # Standard label setup script
│   │   ├── project_setup.sh # Issues and milestones setup script
│   │   └── branch_protection.sh # Branch protection rules setup
│   ├── images/         # Project images and visual assets
│   │   ├── banner.gif      # Project banner
│   │   └── static.jpeg     # Static images
│   └── data/           # Storage for additional files to keep in context
└── .temp/              # Temporary backup of original files
```

Additional files:
- `LICENSE` - MIT license for the project
- `CHANGELOG.md` - Version history
- `CONTRIBUTING.md` - Contribution guidelines

The `PROMPT_IDEAS` directory contains numerous pre-made templates for different types of projects. You can use these as a starting point for your `PROMPT.md`. This directory is automatically removed during project generation.

The `genesis` directory serves as the AI's "memory" and reference point, containing prime directives, checklists, best practices, helper scripts, images, and user data. It should be preserved for future AI operations to maintain consistency and quality in your project.

### **3.2 GitHub Integration**
Genesis includes powerful GitHub automation through the helper scripts:

```bash
# Initialize repository with complete GitHub setup in one step
./launcher.sh -g -u your_username -r repo_name -x
```

This will:
1. Create a GitHub repository (public by default, private with -x)
2. Initialize git in the current directory
3. Set up the remote origin
4. **Automatically set up standard labels**
5. **Create initial milestones and issues**
6. **Configure branch protection rules**

The helper scripts can also be used individually at any time:

```bash
# Just set up labels
./genesis_helpers/setup_labels.sh

# Set up initial project milestones and issues
./genesis_helpers/project_setup.sh "Your Project Name"

# Set up branch protection (for main and develop branches)
./genesis_helpers/branch_protection.sh

# Perform specific GitHub operations
./genesis_helpers/github.sh create_issue "Issue title" "Issue description" "bug,enhancement"
./genesis_helpers/github.sh create_milestone "v1.0" "First release" "2023-12-31"
./genesis_helpers/github.sh add_collaborator "username" "admin"
```

### **3.3 Process Flow**

#### Agent-Based Approach (Recommended)
Genesis streamlines project generation with this simple process:

1. You describe your project using our structured specification format in `PROMPT.md`
2. Open the project in Cursor IDE
3. Tell the agent: **"read instructions and follow PROMPT.md"** (with optional configuration)
4. The agent reads the instructions and PROMPT.md
5. If GitHub integration is requested, it sets up your repository automatically
6. **Enable agent mode with YOLO mode** for autonomous decision-making
7. The AI analyzes your requirements and works with you to refine them
8. Genesis generates your project structure and codebase with your guidance
9. All necessary files, configurations, and documentation are created
10. Original files are backed up to a `.temp` directory
11. Genesis cleans up, removing itself according to your chosen options

#### Legacy Launcher Approach
Alternatively, you can use the traditional launcher script:

1. You describe your project using our structured specification format in `PROMPT.md`
2. Run the launcher with your desired configuration options
3. If GitHub integration is enabled, it automatically sets up your repository
4. The launcher opens an interactive chat session
5. **Enable agent mode with YOLO mode** for autonomous decision-making
6. The AI analyzes your requirements and works with you to refine them
7. Genesis generates your project structure and codebase with your guidance
8. All necessary files, configurations, and documentation are created
9. Original files are backed up to a `.temp` directory
10. Genesis cleans up, removing itself according to your chosen options (keeping helper scripts by default)

---

## **4. Development**

### **4.1 Prerequisites**
- Bash shell environment
- GitHub CLI (gh) installed and authenticated (for GitHub integration)
- Git installed and configured

### **4.2 Configuration**
- **Images:** Project images are stored in the root `images/` directory
- **GitHub Automation:** Helper scripts in `genesis_helpers/` provide robust GitHub integration
- **Specification Format:** Use `PROMPT.md` in the root directory to describe your project requirements
- **Dynamic Updates:** Post-generation, README and documentation update automatically to reflect your project details

### **4.3 Contributing**
Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

---

## **5. What You Get**
Based on your specification, Genesis will generate:
- Complete project structure
- All source code files
- Configuration files
- Documentation
- Development environment setup
- Deployment configurations
- Tests and CI/CD setup
- Fully configured GitHub repository (if requested)
- Helper scripts for ongoing project management

Need help? Check `PROMPT.md` for:
- Example patterns to follow
- Structured sections for all aspects of your project
- Clear instructions and guidelines
- Tips for getting the best results

For additional inspiration, browse the `PROMPT_IDEAS/` directory which contains numerous pre-made templates for different types of projects (web apps, mobile apps, APIs, etc.). These templates can be used as a starting point for your own project specifications.

For configuration options, run `./launcher.sh -h`.

---

## **6. Command Reference & Prompt Guide**

### **6.1 Common Post-Generation Commands**

After generating your project, here are useful commands you might need:

#### GitHub Management
```bash
# Create a new issue
./genesis/helpers/github.sh create_issue "Bug: Login not working" "The login form submission fails when..." "bug,priority:high"

# Create a new milestone
./genesis/helpers/github.sh create_milestone "v1.1.0" "Feature Release" "2024-06-30"

# Add a collaborator
./genesis/helpers/github.sh add_collaborator "username" "admin"

# Set up a GitHub Actions secret
./genesis/helpers/github.sh setup_actions_secret "API_KEY" "your-secret-api-key"
```

#### Git Repository Management
```bash
# Start with a fresh Git history (if you didn't use -t or -g)
rm -rf .git
git init
git add .
git commit -m "Initial commit"

# Create and switch to a new feature branch
git checkout -b feature/new-feature

# Push to a remote repository you set up later
git remote add origin https://github.com/username/repo.git
git push -u origin main
```

#### Branch Management
```bash
# Set up protection for a custom branch
./genesis/helpers/branch_protection.sh feature 2

# Create standard labels if you modified them
./genesis/helpers/setup_labels.sh
```

#### Project Management
```bash
# Reset project milestones with a new project name
./genesis/helpers/project_setup.sh "New Project Name"
```

### **6.2 Extending Helper Scripts**

The `genesis/helpers` scripts are designed to be extensible. You can add your own custom functions:

1. **Adding Custom Functions to Existing Scripts**:
   ```bash
   # Add to github.sh
   function my_custom_github_function() {
     # Your custom code here
     gh api ...
   }
   ```

2. **Creating New Helper Scripts**:
   ```bash
   # Create a new script, e.g., my_custom_helper.sh
   #!/bin/bash
   
   # Import the GitHub helper for its functions
   source "$(dirname "$0")/github.sh"
   
   # Define your custom functions
   function custom_setup() {
     # Your setup code here
   }
   
   # Call the function directly if script is executed
   if [[ "$1" ]]; then
     "$@"
   fi
   ```

3. **Make it executable**:
   ```bash
   chmod +x genesis/helpers/my_custom_helper.sh
   ```

### **6.3 Structuring Future Prompts**

When working with Genesis or extending your project, these prompt patterns will help get the best results:

#### Feature Addition Prompt Template
```