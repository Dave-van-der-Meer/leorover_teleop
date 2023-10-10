# leorover_teleop
This is a repository to use 'teleop_twist_joy' node in ROS 2, adapted for the Leo Rover. It uses a Docker container to make it easier to run everything in an easy way.

## Usage

Clone the repository:

```shell-session
$ git clone git@github.com:Dave-van-der-Meer/leorover_teleop.git
```
Then, enter the `docker` folder to build the image by using the script called `docker_build.sh`:

```shell-session
$ cd leorover_teleop/docker
$ ./docker_build.sh
```
When the build is finished, you can use the script `docker_run.sh` to start the Docker container. It will copy the `ROS_DOMAIN_ID` from the host. You can modify this file to change the topic name for the `cmd_vel` messages. By default, it is set to `/leo01/cmd_vel`.

This repo has been tested with an XBOX 360 controller (wired only) and a PlayStation 4 controller (via Bluetooth). 

Run the container with:

```shell-session
$ ./docker_run.sh
```