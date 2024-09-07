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

# Run the Docker container with access to the X server, update the package list, and install the necessary packages
sudo docker run \
    -v .:/soft \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -it osrf/ros:jazzy-desktop \
    /bin/bash -c "apt update && apt install -y $PACKAGES && exec /bin/bash"

# Revoke access to the X server
xhost -local:root

