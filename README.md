# Node-RED CI/CD Example

This repository contains an example of using projects, branching strategies, and containers to deploy flows into a production space.

# ⚡️ Quick Start

1. Fork this repository
2. Create a new project in Node-RED using the forked repository
3. Connect your pipleline of choice to the repository (GitHub Actions, Cloud Build, Jenkins, etc)
4. Make changes locally and push them back
5. Your pipeline when triggered runs the Dockerfile to bundle everything up into a self-contained copy of Node-RED along with your flows.
6. Deploy your image where ever you want.
