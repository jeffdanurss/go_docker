# Go project :mask:

This repository contains a program written in Go that prints a web page that says Hello Distributed World

## Description ✍

This program is written in Go language runs on port 8081 and prints a Hello Worlds distracted server, the server is running on port 3000 and the local host as messages.

## Requirements

- *GO 1.23.0* or higher
- *Git* to clone the repository

## How to Clone and Run

To clone this repository to your local machine, use the following commands:

bash
git clone https://github.com/jeffdanurss/go_docker.git
cd go_docker

## To run the program:

open on visual studio code and run the program with the command go run .\ main.go

## Dockerization 🐋
<ol>
  Step 1: Build the Docker Image

bash

docker build -t go_docker .


  Step 2: Tag the Image

bash

docker tag 83bf258560cb jeffdanurss/goimage


  Step 3: Push Image to Docker Hub
  
bash

docker push jeffdanurss/goimage

</ol>

## Link to Docker Hub 👩‍💻

Go project on Docker Hub: https://hub.docker.com/repository/docker/jeffdanurss/goimage/general
