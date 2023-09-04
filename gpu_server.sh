#!/bin/bash
#file:docker_install.sh

# GLOBAL VARIABLE
CONTAINER_NAME="nvidia_smi_exporter"
RESTART="unless-stopped"
NVIDIACTL="/dev/nvidiactl"
VOL1="/usr/lib/x86_64-linux-gnu/libnvidia-ml.so"
VOL2="/usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1"
VOL3="/usr/bin/nvidia-smi"
PORT=9835
IMAGE_NAME="utkuozdemir/nvidia_gpu_exporter:1.2.0"


function gpu_driver_check()
{
    if lsmod | grep -q "^nvidia"; then
        echo "NVIDIA GPU driver installed"
    else
        echo "NVIDIA GPU driver does not seem to be installed"
        exit 1
    fi
}

function env_install()
{
    # check curl install
    curl -V
    if [ $? -eq  0 ]; then
        echo "Check that curl is installed!"
    else
    	echo "Installing the curl environment..."
        sudo apt-get update
        sudo apt-get install curl
        echo "Installing the curl environment... Installation complete!"
    fi
}
 
function docker_install()
{
	echo "Check Docker install..."
	docker -v
    if [ $? -eq  0 ]; then
        echo "Check that Docker is installed!"
    else
    	echo "Installing the docker environment..."
        curl -fsSL https://test.docker.com -o test-docker.sh
        bash test-docker.sh
        echo "Installing the docker environment... Installation complete!"
    fi

}


# executable env function
gpu_driver_check
docker_install
env_install



# check the number of gpu
gpu_count=$(nvidia-smi -L | wc -l)
echo "GPU count: $gpu_count"

# ADD GPU to docker
GPU=""
gpu_count=$(($gpu_count-1))
for i in $(seq 0 $gpu_count)
do
  GPU="${GPU} --device /dev/nvidia${i}:/dev/nvidia${i}"
done

# docker command
docker_run_command="sudo docker run -d \
--name $CONTAINER_NAME \
--restart $RESTART \
--device $NVIDIACTL:$NVIDIACTL \
$GPU \
-v $VOL1:$VOL1 \
-v $VOL2:$VOL2 \
-v $VOL3:$VOL3 \
-p $PORT:$PORT \
$IMAGE_NAME"
echo "Running command: $docker_run_command"

# run docker
eval $docker_run_command
