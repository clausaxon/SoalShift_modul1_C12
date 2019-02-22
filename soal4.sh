#!bin/bash/

array1=ABCDEFGHIJKLMNOPQRSTUVWXYZ
array2=abcdefghijklmnopqrstuvwxyz

jam=`date +"%H"`
putar=($jam % 26)
#echo $putar
#contoh="Saya Pinter"

array3=($(echo ${array1[@]})$(echo ${array1[@]}))
array4=($(echo ${array2[@]})$(echo ${array2[@]}))
array5=$(echo $array1 | tr "${array1:0:26}" "${array3:${putar}:26}")
array6=$(echo $array2 | tr "${array2:0:26}" "${array4:${putar}:26}")

array1array2=($(echo ${array1[@]})$(echo ${array2[@]})) 
array5array6=($(echo ${array5[@]})$(echo ${array6[@]}))

#oke=$(echo $contoh | tr "${array1array2}" "${array5array6}")

#echo $oke
NOW=`date +"%H:%M %d-%m-%Y"`
#echo $NOW
< /var/log/syslog > /home/claus/Desktop/"$NOW" tr "${array1array2}" "${array5array6}"
