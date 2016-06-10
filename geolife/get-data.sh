#!/bin/bash

rootdir=$(dirname "$(cd -P -- "$(dirname -- "$0")" && pwd -P)")

echo "Checking geolife download..."
if [ ! -d ${rootdir}/persistence/datasets/geolife-trajectories-1.3 ]; then
  echo "Downloading Geolife..."
  wget -P /tmp http://ftp.research.microsoft.com/downloads/b16d359d-d164-469e-9fd4-daa38f2b2e13/Geolife%20Trajectories%201.3.zip
  unzip -d /tmp /tmp/Geolife\ Trajectories\ 1.3.zip
  rm -rf /tmp/Geolife\ Trajectories\ 1.3.zip
  mv /tmp/Geolife\ Trajectories\ 1.3 ${rootdir}/persistence/datasets/geolife-trajectories-1.3
else
  echo "Geolife already downloaded, skipping..."
fi
