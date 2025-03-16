# Getting Started with Genesis

## Welcome to Genesis, the AI-Powered Project Generator

Genesis helps you create complete, production-ready projects directly from your specifications without writing boilerplate code.

## How to Use Genesis (Agent-Based Approach)

### Step 1: Open this project in Cursor

Simply open this folder in Cursor IDE. The AI agent will be available to assist you.

### Step 2: Customize PROMPT.md (Optional)

Open and modify `PROMPT.md` to customize your project requirements:
- Edit the project name and description
- Choose your desired technology stack
- Specify features and requirements
- Configure deployment settings
- Set up GitHub integration preferences

### Step 3: Start the Genesis Process

To begin project generation, **simply type this phrase to the agent**:

> read instructions and follow PROMPT.md

This will trigger the agent to:
1. Read your project specifications from PROMPT.md
2. Generate all required files and folder structure
3. Set up development tools and configuration
4. Handle GitHub integration (if requested)
5. Perform cleanup when complete

### Configuration Options

When starting Genesis, you can specify options by including them in your command:

```
read instructions and follow PROMPT.md with:
- keep images
- init github [username] [repo-name] [private]
- keep prompt
- keep license
- keep helpers
- reinit git
```

For example:
```
read instructions and follow PROMPT.md with:
- keep images
- init github johndoe my-project private
```

### GitHub Integration

To set up a GitHub repository, include:
```
- init github [username] [repo-name] [private]
```

This will:
- Create a new GitHub repository
- Initialize git locally
- Set up standard labels, milestones, and branch protection
- Push your code to the repository

### Questions or Customization?

If you need help or want to customize further, just ask the agent directly. It can explain any part of the process or help you modify your specifications.

Remember to run in agent mode with YOLO mode enabled for best results! 