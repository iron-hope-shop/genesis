#!/bin/bash
# Script to set up common GitHub labels
# This script creates a standardized set of labels for GitHub repositories

# Import GitHub helper
source "$(dirname "$0")/github.sh"

# Function to create label if it doesn't exist
function create_label_if_not_exists() {
    local name="$1"
    local color="$2"
    local description="$3"
    
    if ! check_label_exists "$name"; then
        create_label "$name" "$color" "$description"
        echo "✅ Created label: $name"
    else
        echo "⏩ Label already exists: $name"
    fi
}

# Create standard labels
create_label_if_not_exists "bug" "d73a4a" "Something isn't working"
create_label_if_not_exists "documentation" "0075ca" "Improvements or additions to documentation"
create_label_if_not_exists "enhancement" "a2eeef" "New feature or request"
create_label_if_not_exists "good first issue" "7057ff" "Good for newcomers"
create_label_if_not_exists "help wanted" "008672" "Extra attention is needed"
create_label_if_not_exists "question" "d876e3" "Further information is requested"
create_label_if_not_exists "wontfix" "ffffff" "This will not be worked on"
create_label_if_not_exists "priority:high" "e11d21" "High priority issue"
create_label_if_not_exists "priority:medium" "fbca04" "Medium priority issue"
create_label_if_not_exists "priority:low" "0e8a16" "Low priority issue"
create_label_if_not_exists "status:blocked" "b60205" "Issue is blocked by another issue"
create_label_if_not_exists "status:in-progress" "1d76db" "Work is in progress"
create_label_if_not_exists "status:needs-review" "5319e7" "Needs review before proceeding"
create_label_if_not_exists "type:feature" "0e8a16" "New feature implementation"
create_label_if_not_exists "type:refactor" "fbca04" "Code refactoring"
create_label_if_not_exists "type:testing" "0075ca" "Testing improvements"
create_label_if_not_exists "type:performance" "d4c5f9" "Performance improvements"
create_label_if_not_exists "type:security" "b60205" "Security-related changes"

echo "🏷️ Label setup complete!" 