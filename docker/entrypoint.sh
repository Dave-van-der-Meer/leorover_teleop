#!/bin/bash

set -e

export ROS2_INSTALL_PATH="/opt/ros/foxy"
export ROS_NAMESPACE="leo01"
export ROS_DOMAIN_ID=0

# setup ros2 environment
cd /root/ros2_ws
source "/opt/ros/foxy/setup.bash"
colcon build --symlink-install
source "/root/ros2_ws/install/setup.bash"

exec "$@"
