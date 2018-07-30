dependency=guessinggame.sh
target=README.md
$(target): $(dependency) Makefile
	echo "# Guessing-game" > $(target)
	echo "" >> $(target)
	echo "This file is created at: \c" >> $(target)
	date >> $(target)
	echo "" >> $(target)
	echo "Number of lines in \"$(dependency)\": \c" >> $(target)
	wc -l $(dependency) | egrep -o "[0-9]+" >> $(target)
	