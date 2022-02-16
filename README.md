# Node-RED CI/CD with GitHub Actions

Example of using Docker and GitHub Actions to create self-contained Node-RED deployments bundled with flows.

* Use with Node-RED projects
* Implement CI/CD and automation

# 👨🏻‍💻 Test It Out

```shell
docker run -p 1880:1880 ghcr.io/arivictor/node-red-cicd-example:latest
```
Make a get request to `http://127.0.0.1:1880/hello`

```json
{ "response": "hello" }
```

Notice you can't access the UI! Enable it in `settings.js` if you need to. This won't affect your local node-red service.

```javascript
module.export = {
  // ...
  
  disableEditor: false,
}

```

# ⚡️ Quick Start

1. Fork this repository
2. Create a new project in Node-RED using the forked repository
3. Make a change to the flow and push it back to the main branch
4. GitHub Actions will build and publish the flows in a self-contained image
5. Use the image to deploy it anywhere you want (Kubernetes, Cloud Run, GKE, EC2)

> You can use the Dockerfile with your CI solution of choice, simple remove the GitHub Action.
