#!/usr/bin/env bash


####Calculating number of files####
count=$(ls -a| wc -l)

#### Function to ask user for input and verify ####
asknumber (){
#### echo "Guess the number of files in this Directory"
        read -p "Guess the number of Files in this Directory : " guess


##### Validating the data entered by user to make sure it is an integer #####
        while true;
do
        if [[ $guess ]] && [ $guess -eq $guess 2>/dev/null ]
        then
        break
        else
        echo "Please enter numerical value"
        read guess
        fi
done


####If/Else statement to verify the results####
        if  [[ $guess -eq $count ]]
        then
        echo "Congratulations!!!! you guessed it right"
        echo "Thank you participating"

elif [[ $guess -lt $count ]]; then
        echo "Sorry, the number you guessed is lesser than expected"
        echo ""
        asknumber
else
        echo "Sorry, the number you guessed is greater than expected"
        echo ""
        asknumber
fi
}

##Calling the function when program is ran##
asknumber
