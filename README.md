# LINE Simulator for BOT developer

This repository is the fork version of [kenakamu/LINESimulator](https://github.com/kenakamu/LINESimulator). I forked it to work on Docker. Please use the original source when using the latest features.

The difference are:

* Add Dockerfile
* Remove browser startup process at process startup

## Usage

### Docker

```
$ docker run --rm -p 8080:8080 -it grandream/line-simulator:2.0.1.1 line-simulator
```

### Docker Compose

1. Create `docker-compose.yml`.

```
version: '2'
services:
  line-simulator:
    image: grandream/line-simulator:2.0.1.1
    ports:
      - "8080:8080"
    command: "line-simulator"
```

2. Startup docker-compose and open Chrome and connect to http://localhost:8080.

```
$ docker-compose up
```
