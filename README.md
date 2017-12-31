# Watchpoint Docker

## Installation

Installation instructions depend on the environment.

### Installing with Pier

```shell
moor install lightster/watchpoint-docker \
    --config="watchpoint.pickem.bnet_api_key=<your_api_key>" \
    --config="watchpoint.pickem.bnet_api_secret=<your_api_secret>"
```

### Installing on Development

```shell
git@github.com:lightster/watchpoint-docker.git
cd watchpoint-docker
./configure docker-dev <bnet-api-key> <bnet-api-secret>
make install
```
