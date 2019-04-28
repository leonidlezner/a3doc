#!/bin/sh

#docker run -it --rm -v $(pwd)/docs:/home/workspace aadoc

docker run -it -v $(pwd)/$1:/home/workspace a3doc