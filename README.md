# ⚡️ Node-RED CI/CD with Docker

Example of using Docker to create self-contained Node-RED deployments bundled with flows.

# 👨🏻‍💻 Test It Out

Clone the repository then build the image:

```shell
docker build -t myapp .
```

Run the container

```shell
docker run -p 1880:1880 myapp
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

# Further

* Use Node-RED projects to integrate with your VCS of choice (GitHub, BitBucket, GitLab, etc.)
* Use the Dockerfile to build images in your CI of choice (Actions, Cloud Build, Jenkins, etc.)
* Host your image and deploy it wherever Docker can run
