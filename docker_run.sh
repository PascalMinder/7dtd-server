#!/bin/bash

./docker_build.sh

# Run the server
docker run -e PUID=1000 -e PGID=1000 -p 26900:26900/tcp -p 26900:26900/udp -p 26901:26901/udp -p 26902:26902/udp -p 8081:8081/tcp -e SEVEN_DAYS_TO_DIE_UPDATE_CHECKING="1" -v $(pwd)/7dtd_data/game:/steamcmd/7dtd -v $(pwd)/7dtd_data/data:/app/.local/share/7DaysToDie --name 7dtd-server -it --rm didstopia/7dtd-server:latest
