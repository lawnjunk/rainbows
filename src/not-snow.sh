#!/bin/bash

lulwat=" "
count=1
bing='bing'
while [ 1 ]; do 
  if [ $bing = 'bing' ];then
    ((count = count +  1))
    [ $count -eq 25 ] && bing='bong'
  else 
    ((count = count -  1))
    [ $count -eq 0 ] && bing='bing'
  fi

  for wat in $(seq 1  $(( count / 2)) );do
    lulwat="$(tput setab $count)$(tput setaf $wat)#  $lulwat"
    echo -e  -n $(tput setab $wat)"    "
  done
  echo -e   $(tput setab $count)"$lulwat$lulwat "
  #[ $(($count % 3)) -eq 0  ] && clear
done
