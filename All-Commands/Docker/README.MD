## To list out last created container

```
docker ps -l 
```
## To list only the ID's of running containers
```
docker ps --quit
OR
docker ps -a
``` 
## To build the docker image
```
docker build -t my-image .
```
## Expose Port
```
docker run -itd -p 8080:80 image
```
## Run the containers from image
```
docker run -i -p 80:8080 --name container1 my-image
docker run -i -p 80:8081 --name conatainer2 my-image
```
## To get docker logs
```
docker logs <container-id>
```
## To restart the container
```
docker restart <container-id>
```