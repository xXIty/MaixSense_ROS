
# Base image
FROM osrf/ros:jazzy-desktop

# Install necessary packages
RUN apt update && apt install -y \
    libevent-dev \
    ros-jazzy-rqt* \
    ros-jazzy-rviz* \
    ros-jazzy-rtabmap \
    ros-jazzy-rtabmap \
    python3-requests \
    ros-jazzy-tf2-tools

# Set up the working directory
WORKDIR /soft

