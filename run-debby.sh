#!/bin/bash

docker run -it -d --name debby -v "$(pwd)"/data:/data debian bash

