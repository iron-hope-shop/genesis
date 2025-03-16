#!/bin/bash
# GitHub helper script for Genesis
# This script provides reliable functions for GitHub operations

function create_issue() {
    local title="$1"
    local body="$2"
    local labels="$3"
    
    gh issue create --title "$title" --body "$body" --label "$labels"
}

function create_label() {
    local name="$1"
    local color="$2"
    local description="$3"
    
    gh label create "$name" --color "$color" --description "$description"
}

function create_milestone() {
    local title="$1"
    local description="$2"
    local due_date="$3"
    
    gh api repos/{owner}/{repo}/milestones -f title="$title" -f description="$description" -f due_on="$due_date"
}

function setup_branch_protection() {
    local branch="$1"
    local required_approvals="$2"
    
    gh api repos/{owner}/{repo}/branches/$branch/protection -f required_status_checks[strict]=true -f required_pull_request_reviews[required_approving_review_count]=$required_approvals
}

function check_label_exists() {
    local name="$1"
    
    gh label list | grep -q "$name"
    return $?
}

function check_issue_exists() {
    local title="$1"
    
    gh issue list | grep -q "$title"
    return $?
}

function add_collaborator() {
    local username="$1"
    local permission="$2" # Can be 'pull', 'push', 'admin', 'maintain', 'triage'
    
    gh api repos/{owner}/{repo}/collaborators/$username -X PUT -f permission=$permission
}

function setup_actions_secret() {
    local name="$1"
    local value="$2"
    
    gh secret set "$name" -b "$value"
}

# Run the function if passed as an argument
if [[ "$1" ]]; then
    "$@"
fi 