# syntax=docker/dockerfile:1

FROM ubuntu:18.04
WORKDIR /app

# Copy the source code to the container
COPY MAT/ ./MAT/

# Dependency installation 
RUN apt-get -y update
RUN apt-get install python-dev -y
RUN apt-get install libx11-dev -y
RUN apt-get install openjdk-8-jdk -y

# Install MITRE Annotation Tool
WORKDIR /app/MAT/
RUN ./install.sh

# # Install Named Entity Task
WORKDIR /app/MAT/src/MAT
RUN bin/MATManagePluginDirs install $PWD/sample/ne


# Port forwarding documentation
EXPOSE 7801

# Start the application
CMD ["/bin/bash"]