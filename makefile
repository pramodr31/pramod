README.md:
        touch README.md

README.md: guessinggame.sh
        echo "# * Welcome to Guessing Game *" > README.md
        echo "1. Make was ran on: " >> README.md
        date >> README.md
        echo "2. The number of lines :" >> README.md
        wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

