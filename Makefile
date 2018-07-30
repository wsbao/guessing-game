file=guessinggame.sh
all: $(file) README.md
	echo "# Guessing-game" > README.md
	echo "This file is created at: \c" >> README.md
	date >> README.md
	echo "Number of lines in \"$(file)\": \c" >> README.md
	wc -l $(file) | egrep -o "[0-9]+" >> README.md
	