#!/bin/bash

/app/capturehikimage $1 $2 $3 $4
cp -f /app/cam.jpeg /output/
chmod ugo+rw /output/cam.jpeg
