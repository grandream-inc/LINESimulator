# LINE Simulator for BOT developer

This repository is the fork version of [kenakamu/LINESimulator](https://github.com/kenakamu/LINESimulator). I forked it to work on Docker. Please use the original source when using the latest features.

The difference are:

* Add Dockerfile
* Remove browser startup process at process startup

## Usage

1. Download `Dockerfile`.

```
$ cd your-project-root
$ curl -O https://raw.githubusercontent.com/grandream-inc/LINESimulator/master/Dockerfile
```

2. Create `docker-compose.yml`.

```
version: '2'
services:
  line-simulator:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "8080:8080"
    command: "line-simulator"
```

3. Startup docker-compose and open Chrome and connect to http://localhost:8080.

```
$ docker-compose up
```
