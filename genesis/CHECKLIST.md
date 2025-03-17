# Genesis Action Checklist

This document provides detailed verification checklists for different types of actions that the agent might perform. Reference this document to ensure comprehensiveness and consistency.

## Project Generation Checklist

When generating a new project, verify:

- [ ] All required files have been created based on PROMPT.md
- [ ] Project structure follows best practices for the chosen technology stack
- [ ] Configuration files are properly set up with sensible defaults
- [ ] README.md contains comprehensive documentation
- [ ] License file is included (if specified)
- [ ] .gitignore is tailored to the project type
- [ ] Dependencies are specified with appropriate versions
- [ ] Basic test suite is in place
- [ ] Code follows style guidelines for the language
- [ ] Entry points and usage examples are documented

## Feature Addition Checklist

When adding a new feature, verify:

- [ ] The feature implementation meets all requirements
- [ ] Necessary tests are included
- [ ] Documentation is updated to reflect the new feature
- [ ] CHANGELOG.md is updated with the addition
- [ ] Dependencies are updated if necessary
- [ ] New files follow the established project structure
- [ ] The feature doesn't break existing functionality
- [ ] Error handling is implemented appropriately
- [ ] Performance impact has been considered
- [ ] Security implications have been addressed

## Documentation Update Checklist

When updating documentation, verify:

- [ ] All affected documentation files are identified
- [ ] Changes are accurate and reflect the current state
- [ ] Examples and code snippets are updated
- [ ] Formatting is consistent with existing documentation
- [ ] Links and references are valid
- [ ] Version numbers are updated if necessary
- [ ] CHANGELOG.md is updated if user-facing
- [ ] Language is clear and consistent
- [ ] Screenshots or diagrams are updated if needed
- [ ] Table of contents is updated if structure changed

## Code Modification Checklist

When modifying existing code, verify:

- [ ] The changes fulfill the requirements
- [ ] Existing tests pass with the changes
- [ ] New or modified tests cover the changes
- [ ] The changes don't introduce regression issues
- [ ] Code style is consistent with the project
- [ ] Documentation is updated to reflect the changes
- [ ] CHANGELOG.md is updated appropriately
- [ ] Backward compatibility is maintained (or breaking changes documented)
- [ ] Performance impact is acceptable
- [ ] Security hasn't been compromised

## GitHub Integration Checklist

When setting up or modifying GitHub integration, verify:

- [ ] Repository is created with correct settings
- [ ] Standard labels are applied
- [ ] Initial milestones are created
- [ ] Branch protection rules are established
- [ ] Issue and PR templates are in place
- [ ] GitHub Actions workflows are configured
- [ ] CODEOWNERS file is set up if applicable
- [ ] Security policy is established
- [ ] Contribution guidelines are clear
- [ ] License is properly applied

## Release Preparation Checklist

When preparing for a release, verify:

- [ ] Version numbers are updated in all relevant files
- [ ] CHANGELOG.md is complete and detailed
- [ ] All tests pass
- [ ] Documentation is up-to-date
- [ ] Breaking changes are clearly marked
- [ ] Release notes are prepared
- [ ] Dependencies are at appropriate versions
- [ ] Security vulnerabilities are addressed
- [ ] Performance is acceptable
- [ ] Build artifacts are generated correctly 