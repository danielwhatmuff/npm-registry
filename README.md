# Summary

- A Docker build for the sinopia tool for running a private NPM registry [sinopia](https://github.com/rlidwka/sinopia)

# Requirements

- Docker :whale: - if you are on Mac, checkout the [Docker Toolbox](http://docs.docker.com/mac/step_one/)

# To build the Docker image and run a registry

- Create a local config.yaml config file - for help, see the [sinopia](https://github.com/rlidwka/sinopia/tree/master/conf)
- Build the image using docker
```bash
$ docker build -t npm-registry .
```
- Run the container and expose the ports configured
```bash
$ docker run -d -v $(pwd):/sinopia/ -p 4873:4873 npm-registry
$ curl http://localhost:4873/
```

### Contributing
File issues in GitHub to report bugs or issue a pull request to contribute.
