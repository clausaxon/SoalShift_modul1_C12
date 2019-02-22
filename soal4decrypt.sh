#!/bin/bash

array1=ABCDEFGHIJKLMNOPQRSTUVWXYZ
array2=abcdefghijklmnopqrstuvwxyz

read NOW

jam=${NOW:0:2}

putar=($jam % 26)

array3=($(echo ${array1[@]})$(echo ${array1[@]}))
array4=($(echo ${array2[@]})$(echo ${array2[@]}))
array5=$(echo $array1 | tr "${array1:0:26}" "${array3:${putar}:26}")
array6=$(echo $array2 | tr "${array2:0:26}" "${array4:${putar}:26}")

array1array2=($(echo ${array1[@]})$(echo ${array2[@]}))
array5array6=($(echo ${array5[@]})$(echo ${array6[@]}))

< "$NOW" > "$NOW Decrypt" tr "${array5array6}" "${array1array2}"
