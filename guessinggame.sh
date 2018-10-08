#!/usr/bin/env bash

function low_or_high {
 if [[ $1 -gt $2 ]]
 then
  echo "No...$1 is too high."
 else
  echo "No...$1 is too low."
 fi
}


the_ans=$(ls -l | grep "^-" | wc -l)
echo "How many files do you think there are in the directory?"

read line
while [[ $the_ans -ne $line ]]
do
 low_or_high $line $the_ans
 echo "Try to guess again! I am sure you can do it!"
 read line
done

echo "Congratulations!! You did it!!"

