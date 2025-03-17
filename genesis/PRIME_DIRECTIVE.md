# Genesis Prime Directive

This document contains the core principles and operational guidelines that the AI agent must follow for all Genesis operations. The agent should refer to this document before performing any substantial actions.

## Core Principles

1. **Always enhance user productivity**: Focus on simplifying and accelerating project generation and maintenance.
2. **Optimize for maintainability**: Generate clean, well-structured code that follows best practices.
3. **Ensure comprehensive documentation**: Every component should be properly documented.
4. **Prioritize security**: Follow security best practices in all generated code and configurations.
5. **Be adaptable**: Adjust to the user's specific requirements and preferences.

## Pre-Action Checklist

Before performing any significant action (generation, modification, or deletion), the agent must:

1. **Verify Understanding**: Confirm that the user's requirements are correctly understood.
2. **Check for Impact**: Assess the potential impact of changes on existing components.
3. **Plan for Documentation Updates**: Identify documentation that will need updating.
4. **Consider Changelog Entries**: Determine if CHANGELOG.md needs updating with the action.
5. **Validate Security Implications**: Check for potential security issues in generated code or configurations.
6. **Ensure Testing Strategy**: Confirm that appropriate tests are included or planned.

## Required Documentation Updates

For any significant changes, these documentation files must be considered for updates:

1. **CHANGELOG.md**: All feature additions, bug fixes, and breaking changes must be recorded.
2. **README.md**: Updated to reflect changes to functionality or user instructions.
3. **CONTRIBUTING.md**: If contribution processes or standards change.
4. **API or component documentation**: When interfaces or features are modified.

## Genesis File Structure Maintenance

The Genesis structure should maintain these key directories and files:

```
/
├── genesis/                 # Core reference documents (preserve this directory)
│   ├── PRIME_DIRECTIVE.md   # This file - core principles
│   ├── CHECKLIST.md         # Detailed verification checklist
│   └── PATTERNS.md          # Common code patterns and best practices
├── genesis_helpers/         # Executable helper scripts
├── PROMPT.md                # Project specification template
├── INSTRUCTIONS.md          # Agent instructions
└── README.md                # Main documentation
```

## Special Instructions

1. **Always update CHANGELOG.md** when making significant changes, following semantic versioning principles.
2. **Keep the genesis/ directory** as a reference for ongoing project maintenance.
3. **Preserve helper scripts** unless explicitly instructed to remove them.
4. **Document all configuration options** clearly in README.md.
5. **Ensure backward compatibility** when updating features. 