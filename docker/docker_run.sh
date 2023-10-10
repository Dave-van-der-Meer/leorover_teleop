#!/bin/bash
#xhost +local:docker
LEOROVER='leo01'

# Note: replace --restart=always to --rm for testing
docker run -it \
    --rm \
    --network host \
    --ipc host \
    --privileged \
    -e ROS_NAMESPACE=${ROS_NAMESPACE} \
    -e ROS_DOMAIN_ID=${ROS_DOMAIN_ID} \
    --volume="${PWD}/../ros2_ws/src/leorover_teleop:/root/ros2_ws/src/leorover_teleop" \
    --volume="/dev:/dev" \
    --name leorover_teleop \
    local/leorover_teleop:foxy \
    ros2 launch leorover_teleop joy_teleop_fast.launch.xml cmd_vel_out:=/${LEOROVER}/cmd_vel