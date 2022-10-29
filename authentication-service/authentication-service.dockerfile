FROM alpine:latest
RUN mkdir /app

# this will use the previous stage filesystem and get the binnary and will copy it on the current smaller docker image
COPY authApp /app

# launch the microservice in the container
CMD [ "/app/authApp" ]