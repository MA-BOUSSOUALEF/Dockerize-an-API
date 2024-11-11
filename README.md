# Use the official Node.js image (latest version)
FROM node:latest

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all the files from the local directory into the /app directory in the container
ADD . .

# Install dependencies defined in package.json
RUN npm install

# Run the Node.js application by executing index.js
CMD node index.js

################################################################################################
# Commande we will use 

# Show all image
docker image ls 
# Adding exesting image in docker hub 
docker pull nameOfImage:Tag   // her insted of using latest in tag you can use alpine is more optimizing then latest
# Adding our image
--> adding Dockerfile , .dockerignorefile , and your project
docker build -t nameOfyourImage:Tag .     // you can change -t by tag
# Deleting image
docker rmi nameOfImage
# Creat multiple version of your image 
docker tag nameImage:latest samenameofImage:whatYouWant

# Create and run  container from an image 
docker run --name nameOfContainer -d -p port1:port nameOfImage:Tag   // port can be 3000:3000 for node and 8080:80 for inginx as an example 
# Show all container 
docker ps 
# Show all runing container 
docker ps -a 
# delete container 
docker rm -f nameOfContainer // -f for forcing the delete action 
# Stop a container 
docker stop nameOfContainer 
# Show erreur message 
docker logs nameOfcontainer 
# push your image in docker hub 
-->create rpository 
create a image  with this name nameAccountDockerHub/nameofRepository:tag
docker push nameofimage:Tag
# pull your image
 docker pull nameofimage
# for  seign what is in container 
docker exec -it IDContainer /bin/sh   
->to know if is /bib/sh or not 
docker inspect IDContainer 
->and searche cmd 

