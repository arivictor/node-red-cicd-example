# Node-RED DevOps

This repository contains an example of using projects, branching strategies, and containers to deploy flows into a production space.

1. A repository is a boundary for a service
2. Each service contains related flows
3. The dockerfile references Node-RED as a base image
4. The dockerfile bundles the flow.json and configuration files into an image
5. This image can then be hosted and deployed where needed
