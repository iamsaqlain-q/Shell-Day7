#!/bin/bash

array=(111 222 333 444 555 666 777 888 999 000)

largest=${array[0]}
secondGreatest='temp'
smallest=${array[0]}
seconndSmallest='temp2'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "temp" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done
echo "secondGreatest = $secondGreatest"

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} < $smallest ]]
  then
    seconndSmallest=$smallest
    smallest=${array[i]}
  elif (( ${array[i]} != $smallest )) && { [[ "$seconndSmallest" = "temp2" ]] || [[ ${array[i]} < $seconndSmallest ]]; }
  then
    seconndSmallest=${array[i]}
  fi
done
echo "seconndSmallest = $seconndSmallest"