#!/bin/bash
while [ 1 ];do 
for wat in `seq 1 255`;do
echo -n $(tput setab $wat)"   "
done
done
