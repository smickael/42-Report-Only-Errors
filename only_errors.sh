norminette | egrep -B1 'Error|Warning' > .check.txt
cat .check.txt | sed ''/Error/s//$(printf "\033[31m\033[4mError\033[0m")/'' | sed ''/Warning/s//$(printf "\033[33m\033[4mWarning\033[0m")/''
rm .check.txt
