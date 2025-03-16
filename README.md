# Genesis: AI-Powered Project Generator

## Quick Start (2 Simple Steps)

1. **Fill in Your Project Specs:**
   - Open `PROMPT.md` in this directory
   - Follow the patterns to describe your project
   - Be as detailed as possible

2. **Generate Your Project:**
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
   ```
   
   **Important**: Run Genesis in agent mode with YOLO mode enabled for best results. 
   YOLO mode allows the AI to make more autonomous decisions, resulting in faster and more
   comprehensive project generation.
   
   This will open an interactive chat where you can:
   - Refine your project requirements
   - Make real-time adjustments
   - Review and approve generated components

That's it! Genesis will analyze your specification and generate your entire project.

## Project Structure

Genesis has a simple, minimalist design with these key components:

```
project/
├── PROMPT.md           # Your project specification template
├── launcher.sh         # The script that launches the generator
├── README.md           # This documentation
├── images/             # Directory for project images
│   ├── banner.gif      # Project banner
│   └── static.jpeg     # Static images
└── genesis_helpers/    # Helper scripts for GitHub integration and project setup
    ├── github.sh       # Core GitHub API integration functions
    ├── setup_labels.sh # Standard label setup script
    ├── project_setup.sh # Issues and milestones setup script
    └── branch_protection.sh # Branch protection rules setup
```

The `genesis_helpers` scripts are kept by default to provide ongoing support for repository management. They're used both during initialization and can be used later for maintenance tasks.

Additional files:
- `LICENSE` - MIT license for the project
- `CHANGELOG.md` - Version history
- `CONTRIBUTING.md` - Contribution guidelines
- `.temp/` - Temporary backup of original files
- `genesis/` - Supporting directory (removed during cleanup unless -k is used)

## GitHub Integration

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

## How It Works

Genesis uses AI to transform your project specification into a complete, working codebase:

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

## What You Get

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

## Need Help?

Check `PROMPT.md` for:
- Example patterns to follow
- Structured sections for all aspects of your project
- Clear instructions and guidelines
- Tips for getting the best results

Run `./launcher.sh -h` for help with configuration options.

For GitHub automation options:
- Check individual scripts in `genesis_helpers/` directory
- Run `./genesis_helpers/github.sh` without arguments to see available functions

## License
MIT License - See LICENSE file for details

---

## Detailed Information

### Project Overview
Genesis is a project generator that uses AI to transform a simple project specification into a complete codebase. It eliminates the need for templates and boilerplate by dynamically generating everything based on your requirements.

### Key Features
- **AI-Powered Generation:** Transform specifications into complete codebases
- **Interactive Refinement:** Work with the AI to refine your project as it's built
- **Clean Output:** When done, Genesis removes itself leaving only your project
- **Flexible Options:** Control what to keep via simple command-line flags

### Installation
Clone the repository and navigate into the project directory:
```bash
git clone https://github.com/your-org/genesis.git
cd genesis
```

### Project Status
- **Current Version:** 1.0.0
- **Implemented Features:**
  - Interactive project generation
  - Complete codebase creation
  - Self-cleanup functionality
  - Command-line configuration
  - Agent mode with YOLO capabilities
- **Planned Features:**
  - Enhanced image handling
  - Expanded template options
  - Non-interactive mode

<div align="center">
  <img src="images/banner.gif" alt="Genesis Seed Repository" width="100%">
</div>

<div align="center">
  [![GitHub Release](https://img.shields.io/github/v/release/your-org/genesis?include_prereleases&label=Release)](https://github.com/your-org/genesis/releases)
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
</div>

---

<div align="center">
  <h2>📖 Contents</h2>
</div>

<details open="open">
<summary><strong>Getting Started</strong></summary>

- [Genesis: AI-Powered Project Generator](#genesis-ai-powered-project-generator)
  - [Quick Start (2 Simple Steps)](#quick-start-2-simple-steps)
  - [Project Structure](#project-structure)
  - [GitHub Integration](#github-integration)
  - [How It Works](#how-it-works)
  - [What You Get](#what-you-get)
  - [Need Help?](#need-help)
  - [License](#license)
  - [Detailed Information](#detailed-information)
    - [Project Overview](#project-overview)
    - [Key Features](#key-features)
    - [Installation](#installation)
    - [Project Status](#project-status)
  - [1. Introduction](#1-introduction)
    - [1.1 Overview](#11-overview)
    - [1.2 Objectives](#12-objectives)
  - [2. How Genesis Works](#2-how-genesis-works)
  - [3. Quick Start](#3-quick-start)
    - [Installation](#installation-1)
    - [Bootstrapping](#bootstrapping)
  - [4. Development](#4-development)
  - [5. License](#5-license)
  - [6. Project Status](#6-project-status)
  - [See Also](#see-also)
  
</details>

<details open="open">
<summary><strong>Core Documentation</strong></summary>

- [How Genesis Works](#2-how-genesis-works)
- [Development](#4-development)

</details>

<details open="open">
<summary><strong>Project Information</strong></summary>

- [License](#5-license)
- [Project Status](#6-project-status)
- [See Also](#see-also)

</details>

---

## 1. Introduction

### 1.1 Overview
Genesis is a seed repository designed to transform your Software Design Spec (SDS) into a fully realized software suite. It provides a modular engine that automates configuration, documentation generation, and project setup.

### 1.2 Objectives
- **Rapid Bootstrapping:** Quickly convert your SDS into a working project.
- **Automated Configuration:** Generate tailored configuration files, scripts, and documentation.
- **Extensible Framework:** Easily adapt and extend the bootstrapping process to meet your project's unique needs.

---

## 2. How Genesis Works
Genesis streamlines project initialization with a centralized engine and simple configuration:
- **Core Engine & Configuration:** All primary scripts and settings live within the `genesis` folder.
- **Specification Format:** Use `PROMPT.md` in the root directory to describe your project requirements.
- **Assets & Resources:** Project images are stored in the root `images/` directory.
- **GitHub Automation:** Helper scripts in `genesis_helpers/` provide robust GitHub integration.
- **Automated Bootstrapping:** Execute the launcher with agent/YOLO mode enabled to transform your specification into a complete project.
- **Dynamic Updates:** Post-generation, the README and documentation update automatically to reflect your project details.

---

## 3. Quick Start

### Installation
Clone the repository and navigate into the project directory:
```bash
git clone https://github.com/your-org/genesis.git
cd genesis
```

### Bootstrapping
Launch Genesis to begin transforming your specification into a complete software suite:
```bash
./launcher.sh -g -u your_username -r repo_name
```

For best results, run Genesis in agent mode with YOLO mode enabled when prompted in the chat interface. This allows the AI to make more autonomous decisions, resulting in faster and more comprehensive project generation.

---

## 4. Development
- **Configuration:** Modify settings in `genesis/config/genesis.config.json` to adjust language, CI/CD pipelines, deployment parameters, and more.
- **Testing & Contribution:** Run tests (if available) and refer to [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on contributing improvements.

---

## 5. License
This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

## 6. Project Status
- **Implemented Features:**
  - Core bootstrapping engine with dynamic documentation generation.
  - Configurable settings for deployment, CI/CD, and issue management.
- **Planned Features:**
  - Enhanced automation for containerization and deployment.
  - Expanded integrations with GitHub issues and CI pipelines.

---

## See Also
- [CHANGELOG.md](CHANGELOG.md) – Version history.
- [CONTRIBUTING.md](CONTRIBUTING.md) – Contribution guidelines.
