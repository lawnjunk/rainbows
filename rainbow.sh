#!/bin/bash

lulwat=" "
count=1
bing='bing'
while [ 1 ]; do 
  if [ $bing = 'bing' ];then
    ((count = count +  1))
    [ $count -eq 250 ] && bing='bong'
  else 
    ((count = count -  1))
    [ $count -eq 0 ] && bing='bing'
  fi

  for wat in $(seq 1  12 );do
    lulwat="$(tput setab $count)$(tput setaf $wat)$  lskdfjlsdkfalsdkfjs$lulwat";
    echo -e  -n $(tput setab $count)"    "
  done
  for wat in $(seq 1  30 );do
    lulwat="$(tput setab $count)$(tput setaf $wat)$  $lulwat";
  done
  echo -e   $(tput setab $count)"$lulwat$count "
done
