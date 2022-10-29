# 1st stage of building the microservice
#we will get the official golang image for building the binnary of the microservice
# FROM golang:1.19-alpine as builder

# # this creates a 
# RUN mkdir /app

# # copy the code ./cmd/api to /app 
# COPY . /app

# # set the working directory
# WORKDIR /app

# # compile the go code for broker microservice
# RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

# # give executable permission to brokerApp resulted binnary
# RUN chmod +x /app/brokerApp

# 2 stage docker transform a binarry into docker is deprecated

# 2nd stage uses another docker image used to host the microservice
FROM alpine:latest
RUN mkdir /app

# this will use the previous stage filesystem and get the binnary and will copy it on the current smaller docker image
COPY brokerApp /app

# launch the microservice in the container
CMD [ "/app/brokerApp" ]