#!/bin/bash

# Start the Docker container and run roscore in the background
docker run -d -it --user=ros --network=host --ipc=host --device=/dev/dri:/dev/dri -v $PWD:/my_source_code -v /tmp/.X11-unix:/tmp/.X11-unix:rw --env=XDG_RUNTIME_DIR=/tmp/runtime-$(id -u) --env=DISPLAY ridgeback_image /bin/bash -c 'roscore & sleep infinity'
