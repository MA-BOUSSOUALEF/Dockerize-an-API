# Use the official Node.js image (latest version)
```bash
FROM node:latest
```
# Set the working directory inside the container to /app
```bash

WORKDIR /app
```
# Copy all the files from the local directory into the /app directory in the container
```bash
ADD . .
```
# Install dependencies defined in package.json
```bash

RUN npm install
```
# Run the Node.js application by executing index.js
```bash

CMD node index.js
```
################################################################################################
# Commande we will use 

# Show all image
```bash
docker image ls
```
# Adding exesting image in docker hub 
```bash
docker pull nameOfImage:Tag   // her insted of using latest in tag you can use alpine is more optimizing then latest
```
# Adding our image
--> adding Dockerfile , .dockerignorefile , and your project
```bash
docker build -t nameOfyourImage:Tag .     // you can change -t by tag
```
# Deleting image
```bash
docker rmi nameOfImage
```
# Creat multiple version of your image 
```bash
docker tag nameImage:latest samenameofImage:whatYouWant
```
# Create and run  container from an image 
```bash
docker run --name nameOfContainer -d -p port1:port nameOfImage:Tag   // port can be 3000:3000 for node and 8080:80 for inginx as an example 
```
# Show all container 
```bash
docker ps 
```
# Show all runing container 
```bash
docker ps -a 
```
# delete container 
```bash
docker rm -f nameOfContainer // -f for forcing the delete action 
```
# Stop a container 
```bash
docker stop nameOfContainer 
```
# Show erreur message 
```bash
docker logs nameOfcontainer 
```
# push your image in docker hub 
-->create rpository 
create a image  with this name nameAccountDockerHub/nameofRepository:tag
```bash
docker push nameofimage:Tag
```
# pull your image
```bash
 docker pull nameofimage
```
# for  seign what is in container 
```bash
docker exec -it IDContainer /bin/sh   
```
->to know if is /bib/sh or not 
```bash
docker inspect IDContainer 
```
->and searche cmd 

