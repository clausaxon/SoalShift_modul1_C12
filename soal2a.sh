awk -F, 'NR > 1 && max < $10 && $7 == "2012" { max = $1 } END { print max }' WA_Sales_Products_2012-14.csv
