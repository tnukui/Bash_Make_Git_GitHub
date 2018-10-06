#!/bin/sh

function low_or_high {
 if [[ $1 -gt $2 ]]
 then
  echo "$1 is too high."
 else
  echo "$1 is too low."
 fi
}


the_ans=$( ls -1 | wc -l )
echo $the_ans

echo "How many files do you think there are in the directory?"

read line
while [[ $the_ans -ne $line ]]
do
 low_or_high $line $the_ans
 echo "Try to guess again."
 read line
done

echo "Correct." 

