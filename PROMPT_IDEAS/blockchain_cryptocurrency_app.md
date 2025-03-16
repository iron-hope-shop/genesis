<!-- 
GENESIS PROJECT SPECIFICATION - BLOCKCHAIN/CRYPTOCURRENCY APPLICATION
-->

<!--===============================================================================-->
<!-- PROJECT BASICS -->
<!--===============================================================================-->

PROJECT_NAME = "CryptoVault"

PROJECT_DESCRIPTION = """
A secure, user-friendly cryptocurrency wallet and DeFi platform that allows users
to manage multiple cryptocurrencies, interact with decentralized applications,
track portfolio performance, and execute trades across various exchanges and
liquidity pools.
"""

<!--===============================================================================-->
<!-- PROJECT TYPE -->
<!--===============================================================================-->

PROJECT_TYPE = "Web3 Application"

<!--===============================================================================-->
<!-- CORE FEATURES -->
<!--===============================================================================-->

FEATURES = [
    "Multi-cryptocurrency wallet management",
    "DApp browser and interaction",
    "Portfolio tracking and visualization",
    "Cross-chain asset management",
    "Smart contract interaction",
    "NFT collection dashboard",
    "Decentralized exchange integration",
    "Token swaps and liquidity provision",
    "Staking and yield farming",
    "Transaction history and tax reporting",
    "Price alerts and notifications",
    "Enhanced security with biometrics and MFA",
    "Cold wallet integration",
    "Gas fee optimization"
]

<!--===============================================================================-->
<!-- TECHNOLOGY STACK -->
<!--===============================================================================-->

FRONTEND = "React/Next.js"
UI_FRAMEWORK = "Chakra UI"
STATE_MANAGEMENT = "Redux Toolkit"

BLOCKCHAIN_INTEGRATION = [
    "ethers.js - Ethereum/EVM chains",
    "web3.js - Alternative Ethereum interface",
    "@solana/web3.js - Solana integration",
    "WalletConnect - Wallet interoperability",
    "The Graph - Indexed blockchain data"
]

BACKEND = "Node.js"
SERVER_FRAMEWORK = "Express"
DB_TYPE = "MongoDB"

AUTH_TYPE = "Decentralized + JWT"
AUTH_PROVIDERS = ["wallet signatures", "email"]

<!--===============================================================================-->
<!-- ARCHITECTURE PATTERNS -->
<!--===============================================================================-->

ARCHITECTURE_PATTERN = "Modular frontend with microservices backend"

API_STYLE = "REST + GraphQL"

BLOCKCHAIN_NETWORKS = [
    "Ethereum", "Polygon", "Binance Smart Chain",
    "Solana", "Avalanche", "Arbitrum", "Optimism"
]

SECURITY_APPROACH = """
- Client-side encryption of sensitive data
- No private key storage on servers
- Message signing for authentication
- Hardware wallet integration
- Regular security audits
"""

<!--===============================================================================-->
<!-- PROJECT STRUCTURE -->
<!--===============================================================================-->

PROJECT_STRUCTURE = "Monorepo"

FOLDER_STRUCTURE = """
/packages
  /frontend
    /components - UI components
    /hooks - Custom React hooks
    /pages - Next.js pages
    /store - Redux state management
    /services - API and blockchain services
    /utils - Utility functions
    /theme - UI theming
  /backend
    /api - REST API endpoints
    /services - Business logic
    /models - Data models
    /blockchain - Blockchain integration services
    /jobs - Background jobs and schedulers
  /common - Shared types and utilities
  /contracts - Smart contracts (if applicable)
  /scripts - Development and deployment scripts
/docs - Documentation
"""

<!--===============================================================================-->
<!-- CLOUD & DEPLOYMENT -->
<!--===============================================================================-->

HOSTING = "Vercel (frontend), AWS (backend)"
CLOUD_PROVIDER = "AWS"
INFRASTRUCTURE_CODE = "Terraform"

<!--===============================================================================-->
<!-- VERSION CONTROL & COLLABORATION -->
<!--===============================================================================-->

USE_GIT = "Yes"
USE_GITHUB = "Yes"
USE_GITHUB_ACTIONS = "Yes"

<!--===============================================================================-->
<!-- CONTINUOUS INTEGRATION & DEPLOYMENT -->
<!--===============================================================================-->

CI_CD_PIPELINE = "GitHub Actions"

CI_STEPS = [
    "Linting and static analysis",
    "Unit and integration tests",
    "Smart contract verification (if applicable)",
    "Security scanning",
    "Build verification"
]

CD_STEPS = [
    "Staging deployment",
    "E2E testing on staging",
    "Production deployment with approval",
    "Post-deployment verification"
]

<!--===============================================================================-->
<!-- CODE QUALITY & STANDARDS -->
<!--===============================================================================-->

USE_LINTER = "Yes"
LINTER_TYPE = "ESLint"
CODE_FORMATTER = "Prettier"

INCLUDE_TESTS = "Yes"
TEST_FRAMEWORK = "Jest, React Testing Library, Hardhat (for contracts)"

<!--===============================================================================-->
<!-- SECURITY & COMPLIANCE -->
<!--===============================================================================-->

SECURITY_FEATURES = [
    "End-to-end encryption for sensitive data",
    "Multi-factor authentication",
    "Hardware wallet support",
    "Rate limiting and anti-bot measures",
    "Regular security audits",
    "Bug bounty program",
    "Privacy-preserving design"
]

COMPLIANCE_REQUIREMENTS = [
    "GDPR compliance for user data",
    "AML/KYC integration options",
    "Transaction monitoring for regulatory compliance",
    "Transparency in fee structures"
]

<!--===============================================================================-->
<!-- DOCUMENTATION -->
<!--===============================================================================-->

INCLUDE_DOCS = "Yes"
API_DOCS = "Swagger/OpenAPI"

DOCUMENTATION_REQUIREMENTS = """
- User guides for all features
- Technical documentation for API and blockchain integration
- Security best practices for users
- Developer documentation for extending the platform
- Regular updates for supported assets and networks
- Contribution guidelines for open source components
"""

<!--===============================================================================-->
<!-- SPECIAL INSTRUCTIONS -->
<!--===============================================================================-->

SPECIAL_INSTRUCTIONS = """
Create a secure, user-friendly blockchain application with:
- Focus on security first - no compromises on wallet security
- Intuitive UX that abstracts blockchain complexity
- Clear error handling for blockchain transactions
- Responsive design with mobile-first approach
- Fast transaction processing and confirmation tracking
- Comprehensive gas fee estimation and optimization
- Support for the latest DeFi protocols and standards
- Proper handling of transaction failures and resubmissions
- Thorough testing of all blockchain integrations
- Compatibility with popular browser extensions and hardware wallets
- Consideration for different network states (congestion, outages)

Follow Web3 best practices including:
- Prioritizing user control of private keys
- Transparent fee structures
- Decentralized options where possible
- Privacy-preserving design

Include thorough logging for troubleshooting blockchain interactions.
""" 