#!/bin/bash

lulwat=" "
count=1
bing='bing'
while [ 1 ]; do 
  if [ $bing = 'bing' ];then
    ((count = count +  1))
    [ $count -eq 200 ] && bing='bong'
  else 
    ((count = count -  1))
    [ $count -eq 33 ] && bing='bing'
  fi

  for wat in $(seq 1  $(( count )) );do
    lulwat="$(tput setab $count)$(tput setaf $wat)  $lulwat"
    echo -e  -n $(tput setab $wat)"                      "
    echo -e  -n $(tput setab $((255 - wat)))"                      "
    #echo -e  -n $(tput setab $wat)"                      "
  done
  echo -e   "$lulwat $lulwat"
    lulwat="$(tput setab $wat)$(tput setaf $wat)  $lulwat"
  echo -e   "$lulwat $lulwat"
  sleep 0.005
  echo -e   "$lulwat $lulwat"
done
