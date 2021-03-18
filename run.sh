#!/bin/bash

hostPort=8080
containerPort=80

imageName=hello-oc
tagName="v0.0.1"
containerName=hello-oc_container

docker rmi $imageName:$tagName

docker build -t $imageName:$tagName .

#docker run -d --restart=always --name=$containerName $imageName:$tagName

winpty docker run -it --rm -p $hostPort:$containerPort --name=$containerName $imageName:$tagName
