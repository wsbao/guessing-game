#!/usr/bin/env bash
# File: guessinggame.sh

function resp_handler {
    local resp
    local nf=$(ls -l | wc -l)
    read resp
    expr $resp - $nf + 1
}

echo "Guess how many files are in the current directory: "
diff=$(resp_handler)

while [[ $diff -ne 0 ]]
do
    if [[ $diff -gt 0 ]]
    then
        echo "Your guess is too high. Please try again:"
    else
        echo "Your guess is too low. Please try again:"
    fi
    diff=$(resp_handler)
done

echo "Correct guess! Congratulation!"
