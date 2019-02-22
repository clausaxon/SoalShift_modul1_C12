echo "2a"
awk -F ',' '{if($7=='2012') i[$1]+=$10} END{for (j in i)print j}' WA_Sales_Products_2012-14.csv | sort -nr | head -1 

echo "2b"
awk -F ',' '{if($7 == "2012" && $1=="United States") i[$4]+=$10} END {for(j in i)print j}' WA_Sales_Products_2012-14.csv | sort -nr | head -3

echo "2c"
awk -F ',' '{if($7=="2012" && $1 == "United States" && ($4=="Personal Accessories" || $4=="Camping Equipment" || $4=="Outdoor Protection")) i[$6]+=$10;} END {for(j in i)print i[j] ","  j}' WA_Sales_Products_2012-14.csv | sort -nr | head -n3 | awk -F, '{print $2}'


