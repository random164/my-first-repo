echo "Guess the number of files in the current directory"

function guessnumber(){
    answer=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess:"
        read  number
        if [ $number -lt $answer ]
        then
            echo "Your guess is less than the correct answer"
        elif [ $number -gt $answer ]
        then
            echo "Your guess is greater than the correct answer"
        else
            echo "Congratulation! You guessed!"
        break;
        fi
    done
}

guessnumber
