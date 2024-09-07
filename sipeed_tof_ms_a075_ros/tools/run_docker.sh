#!/bin/bash

# List of packages to install
PACKAGES="libevent-dev \
    ros-jazzy-rqt* \
    ros-jazzy-rviz* \
    ros-jazzy-rtabmap \
    ros-jazzy-rtabmap \
    python3-requests \
    ros-jazzy-tf2-tools"

# Allow access to the X server
xhost +local:root

# Start the Docker container in the background with access to the X server
CONTAINER_ID=$(sudo docker run -d \
    -v .:/soft \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -it osrf/ros:jazzy-desktop \
    /bin/bash)

# Wait for the container to start
sleep 2

# Update the package list and install the necessary packages inside the running container
sudo docker exec $CONTAINER_ID apt update
sudo docker exec $CONTAINER_ID apt install -y $PACKAGES

# Attach to the running container for further interaction
sudo docker exec -it $CONTAINER_ID /bin/bash

# Remove the container after you exit
sudo docker rm -f $CONTAINER_ID

# Revoke access to the X server
xhost -local:root

