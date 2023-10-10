#!/bin/bash
#xhost +local:docker

# Note: replace --restart=always to --rm for testing
docker run -it \
    --rm \
    --network host \
    --ipc host \
    --privileged \
    -e ROS_NAMESPACE='leo01' \
    -e ROS_DOMAIN_ID='0' \
    --volume="$PWD/../ros2_ws/src/leorover_teleop:/root/ros2_ws/src/leorover_teleop" \
    --volume="/dev:/dev" \
    --name leorover_teleop \
    local/leorover_teleop:foxy \
    ros2 launch leorover_teleop joy_teleop_fast.launch.xml cmd_vel_out:=/leo01/cmd_vel