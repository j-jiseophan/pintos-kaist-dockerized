Dockerized version of pintos KAIST.
Focus on writing codes instead setup!

## Requirements
- docker
- docker-compose

## Build image and run container
```bash
docker-compose up -d
```

## Working with VScode
0. Install vscode docker extension
1. Write code as usual
2. Run container `docker-compose up -d`
3. From docker vscode extension menu,right click on container and click 'attach vscode' to run shell
4. test (i.e. `make check`)
