#!/bin/bash

lul=1
wat=255
while [ 1 ]; do 
  wat=$((wat - 1 ))
  wat=$((wat % 256))

  echo $wat

done
