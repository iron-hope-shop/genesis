#!/bin/bash
# Project Setup Script
# This script initializes a new project with standard milestones and initial issues

# Import GitHub helper
source "$(dirname "$0")/github.sh"

# Project variables
PROJECT_NAME="${1:-Unnamed Project}"
VERSION="0.1.0"

# Function to create milestone if it doesn't exist
function create_milestone_if_not_exists() {
    local title="$1"
    local description="$2"
    local due_date="$3"
    
    # Crude way to check if milestone exists
    if ! gh milestone list | grep -q "$title"; then
        create_milestone "$title" "$description" "$due_date"
        echo "✅ Created milestone: $title"
    else
        echo "⏩ Milestone already exists: $title"
    fi
}

# Function to create issue if it doesn't exist
function create_issue_if_not_exists() {
    local title="$1"
    local body="$2"
    local labels="$3"
    
    if ! check_issue_exists "$title"; then
        create_issue "$title" "$body" "$labels"
        echo "✅ Created issue: $title"
    else
        echo "⏩ Issue already exists: $title"
    fi
}

# Setup initial milestones
echo "🏆 Setting up milestones..."
create_milestone_if_not_exists "v0.1.0" "Initial prototype" "$(date -v+30d +%Y-%m-%d)"
create_milestone_if_not_exists "v0.2.0" "Alpha release" "$(date -v+60d +%Y-%m-%d)"
create_milestone_if_not_exists "v1.0.0" "First stable release" "$(date -v+90d +%Y-%m-%d)"

# Create initial issues
echo "📝 Creating initial issues..."

# Project setup issues
create_issue_if_not_exists "Set up development environment" "Create development environment setup instructions and scripts." "documentation,priority:high"
create_issue_if_not_exists "Define coding standards" "Document coding standards and style guidelines for the project." "documentation,priority:medium"

# Feature planning issues
create_issue_if_not_exists "Create project roadmap" "Define the project roadmap with key milestones and deliverables." "documentation,priority:high"
create_issue_if_not_exists "Identify MVP features" "Identify and document the minimum viable product (MVP) features." "enhancement,priority:high"

# Infrastructure issues
create_issue_if_not_exists "Set up CI/CD pipeline" "Configure continuous integration and deployment pipeline." "enhancement,priority:high"
create_issue_if_not_exists "Configure testing framework" "Set up testing framework and write initial tests." "type:testing,priority:medium"

echo "🚀 Project setup complete for $PROJECT_NAME!" 