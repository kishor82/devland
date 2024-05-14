# Use a lightweight base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /devland

COPY . . 

RUN ls 

RUN pwd
# Make all scripts executable
RUN chmod +x ./bin/*

RUN ./bin/init.sh

RUN make setup-dev

CMD ["/bin/bash"]

