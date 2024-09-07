#!/bin/bash

# Allow access to the X server
xhost +local:root

# Start the Docker container in the background with access to the X server
CONTAINER_ID=$(sudo docker run -d \
    -v .:/soft \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -it my-custom-ros-image \
    /bin/bash)

# Wait for the container to start
sleep 2

# Attach to the running container for further interaction
sudo docker exec -it $CONTAINER_ID /bin/bash

# Remove the container after you exit
sudo docker rm -f $CONTAINER_ID

# Revoke access to the X server
xhost -local:root

