#!/bin/bash
# Branch Protection Setup Script
# This script sets up standard branch protection rules

# Import GitHub helper
source "$(dirname "$0")/github.sh"

# Default branches to protect
MAIN_BRANCH="${1:-main}"
DEFAULT_BRANCHES=("$MAIN_BRANCH" "develop")
REQUIRED_APPROVALS="${2:-1}"

# Set up branch protection for a branch
function protect_branch() {
    local branch="$1"
    local required_approvals="$2"
    
    echo "🛡️ Setting up protection for branch: $branch"
    
    # Check if branch exists
    if ! git show-ref --verify --quiet "refs/heads/$branch" && ! git show-ref --verify --quiet "refs/remotes/origin/$branch"; then
        echo "⚠️ Branch $branch does not exist, skipping protection"
        return
    fi
    
    # Set up branch protection
    setup_branch_protection "$branch" "$required_approvals"
    echo "✅ Branch protection set up for $branch (requires $required_approvals approvals)"
}

# Set up protection for default branches
echo "🔒 Setting up branch protection rules..."

for branch in "${DEFAULT_BRANCHES[@]}"; do
    protect_branch "$branch" "$REQUIRED_APPROVALS"
done

echo "✅ Branch protection setup complete!" 