# Node-RED DevOps

This repository contains an example of using projects, branching strategies, and containers to deploy flows into a production space.

1. A repository is a boundary for a service
2. Each service contains related flows in `flow.json`
3. The `Dockerfile` references Node-RED as a base image
4. The `Dockerfile` bundles the `flow.json` and configuration files into a stand-alone node-red image
5. This image can then be hosted and deployed where needed, even on serverless platforms such as Cloud Run. If the service flows are HTTP based you can also scale to zero to reduce costs.
