# 🚀 Project Specification

> **GETTING STARTED:**
> 1. Fill in your project details below, replacing the example patterns
> 2. Run `./launcher.sh` with your desired options:
>    ```
>    -h  Show help message
>    -i  Keep images from Genesis (creates images directory automatically)
>    -k  Keep all Genesis files (don't clean up)
>    -p  Keep PROMPT.md file
>    -l  Keep LICENSE file
>    -g  Initialize GitHub repository
>    -u  GitHub username (required with -g)
>    -r  GitHub repository name (required with -g)
>    -x  Make GitHub repository private
>    -m  Don't keep genesis_helpers directory
>    ```
> 
> 3. **Important**: For best results, run Genesis in agent mode with YOLO mode enabled.
>    YOLO mode allows the AI to make more autonomous decisions, resulting in faster
>    and more comprehensive project generation.
>
> This will open an interactive chat session where you can refine your project with the AI.
> After generation completes, Genesis will clean up after itself according to your chosen options.
>
> **GitHub Integration:** For a complete GitHub setup, use:
> ```
> ./launcher.sh -g -u your_username -r repo_name -x
> ```
> This will:
> - Create your GitHub repository
> - Set up standard labels
> - Create initial milestones and issues
> - Configure branch protection
> - Keep helper scripts for ongoing maintenance
>
> The `genesis_helpers` scripts remain available after project generation for tasks like creating issues, milestones, and managing repository settings.

---

## Project Overview
[Replace this with a clear, concise description of your project]

Example patterns:
```
"Create a [web/mobile/desktop] application for [purpose] that allows users to [key actions]"

"Build a [microservice/backend/frontend] that handles [specific functionality] using [technology stack]"

"Develop a [type] platform that integrates with [services] to provide [benefits]"
```

## Core Features
- [List the main features and functionality]
- [Be specific about what users can do]
- [Include any key technical requirements]

## Technology Stack
- **Frontend:** [e.g., React, Vue, Angular, version X.Y.Z]
- **Backend:** [e.g., Node.js, Python, Java, version X.Y.Z]
- **Database:** [e.g., PostgreSQL, MongoDB, version X.Y.Z]
- **Infrastructure:** [e.g., Docker, Kubernetes, AWS]

## Architecture
[Describe your desired architecture]
- System components
- Data flow
- API structure
- Deployment model

## CI/CD Pipeline
- **Source Control:** [e.g., GitHub, GitLab, BitBucket]
- **CI/CD Platform:** [e.g., GitHub Actions, Jenkins, CircleCI, GitLab CI]
- **Build Process:** [e.g., compilation steps, testing stages]
- **Deployment Strategy:** [e.g., blue-green, canary, rolling updates]
- **Environments:** [e.g., development, staging, production]
- **Required Quality Gates:** [e.g., test coverage thresholds, linting requirements]

## Development Workflow
- **Branching Strategy:** [e.g., Git Flow, GitHub Flow, Trunk-based]
- **Code Review Process:** [e.g., PR templates, required approvals]
- **Issue Tracking:** [e.g., GitHub Issues, Jira, Linear]
- **Documentation Standards:** [e.g., README structure, inline comments, API docs]
- **Testing Requirements:** [e.g., unit, integration, e2e test requirements]

## Container Strategy
- **Containerization:** [e.g., Docker, Podman, none]
- **Orchestration:** [e.g., Kubernetes, Docker Swarm, none]
- **Container Registry:** [e.g., Docker Hub, GitHub Container Registry]
- **Base Images:** [e.g., specific Alpine/Ubuntu version preferences]

## Security Requirements
- **Authentication Method:** [e.g., OAuth, JWT, API keys]
- **Authorization Levels:** [e.g., role-based access, permissions]
- **Data Protection:** [e.g., encryption at rest/in transit]
- **Compliance Requirements:** [e.g., GDPR, HIPAA, SOC2]
- **Security Scanning:** [e.g., SAST, DAST, dependency scanning]

## Performance Requirements
- **Expected Load:** [e.g., concurrent users, requests per second]
- **Response Time Targets:** [e.g., p95 latency requirements]
- **Scalability Needs:** [e.g., horizontal scaling, auto-scaling]
- **Resource Constraints:** [e.g., memory/CPU limitations]

## Monitoring & Observability
- **Logging:** [e.g., ELK, Splunk, CloudWatch]
- **Metrics:** [e.g., Prometheus, Datadog, New Relic]
- **Tracing:** [e.g., Jaeger, Zipkin, OpenTelemetry]
- **Alerting:** [e.g., PagerDuty, OpsGenie]
- **Dashboards:** [e.g., Grafana, custom solutions]

## Additional Considerations
- **Internationalization:** [e.g., i18n requirements]
- **Accessibility:** [e.g., WCAG compliance level]
- **SEO Requirements:** [e.g., meta tags, SSR]
- **Analytics:** [e.g., Google Analytics, Mixpanel, custom]
- **Documentation:** [e.g., API docs, user guides]
- **License Requirements:** [e.g., MIT, GPL, proprietary]
- **Budget Constraints:** [e.g., cloud spend limits]

---

## Tips for Best Results

1. **Be Specific:**
   - Include version numbers for technologies
   - Specify exact features needed
   - Describe user flows clearly

2. **Consider Dependencies:**
   - List external services
   - Note API integrations
   - Specify environment requirements

3. **Include Constraints:**
   - Performance requirements
   - Security needs
   - Compliance requirements
   - Budget limitations 