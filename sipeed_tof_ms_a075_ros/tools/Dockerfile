# Base image - switching to ROS 2 Humble
FROM osrf/ros:humble-desktop

# Install necessary packages
RUN apt-get update && apt-get install -y \
    libevent-dev \
    ros-humble-rqt* \
    ros-humble-rviz* \
    ros-humble-rtabmap \
    ros-humble-rtabmap-ros \
    python3-requests \
    ros-humble-tf2-tools \
    && rm -rf /var/lib/apt/lists/*

# Set up the working directory
WORKDIR /soft

