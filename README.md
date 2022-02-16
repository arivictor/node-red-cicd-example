# ⚡️ Node-RED CI/CD with Docker

Example of using Docker and GitHub Actions to create self-contained Node-RED deployments bundled with flows.

* Use with Node-RED projects
* Implement CI/CD and automation

# 👨🏻‍💻 Test It Out

Clone the repository then build/run the image:

```shell
docker run -p 1880:1880 .
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
