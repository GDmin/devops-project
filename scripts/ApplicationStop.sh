#!/bin/bash
if [ `docker ps | grep project | wc -l`  = 1 ]
then
        docker stop project
        docker rm project
fi
