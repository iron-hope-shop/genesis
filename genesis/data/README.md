# Genesis Data Directory

This directory serves as a persistent storage location for files that should be kept in mind by the AI assistant when working with your project. Any files placed here will be preserved and consulted during future operations.

## Purpose

Use this directory to store:

1. **Reference files** you want the AI to consider when making changes
2. **Configuration templates** that define your project's standards
3. **Examples or samples** that demonstrate your preferred approaches
4. **Architectural diagrams** or other visual references
5. **API specifications** or interface definitions
6. **Custom guidelines** specific to your project

## Usage

Files in this directory will be automatically preserved when the project is generated, allowing the AI to maintain context about your preferences and requirements over time.

To reference a specific file from this directory when working with the AI assistant, you can use:

```
Please reference genesis/data/my_file.json when implementing this feature
```

## Organization

You are free to organize this directory with subdirectories as needed. For larger projects, consider creating subdirectories for different types of reference materials.

Example structure:
```
genesis/data/
├── apis/              # API specifications
├── architecture/      # Architectural diagrams and explanations
├── examples/          # Code examples and patterns
└── guidelines/        # Custom project guidelines
```

Remember that the purpose of this directory is to maintain context between sessions, allowing the AI to provide more consistent and personalized assistance. 