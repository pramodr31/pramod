#!/bin/bash

####Calculating number of files using for loop####
count=0
for i in ./*
do
        count=$(($count + 1))
done

#### Function to ask user for input and verify ####
asknumber (){
#### echo "Guess the number of files in this Directory"
        read -p "Guess the number of Files in this Directory : " guess

####If/Else statement to verify the results####
if  [ $guess -eq $count ]; then
        echo "Congratulations!!!! you guessed it right"
        echo "Thank you participating"

elif [ $guess -lt $count ]; then
        echo "Sorry, the number you guessed is lesser than expected"
        echo "\n"
        asknumber
else
        echo "Sorry, the number you guessed is greater than expected"
        echo "\n"
        asknumber
fi
}

##Calling the function when program is ran##
asknumber
