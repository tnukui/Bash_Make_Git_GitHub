all: guessinggame.sh README.md

guessinggame.sh:
	touch guessinggame.sh

README.md: guessinggame.sh 
	echo "#Title: Bash_Make_Git_GitHub" >> README.md
	echo "Date " >> README.md
	date '+ %Y-%m-%d %H:%M' >> README.md
	echo "The number of lines of code " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md

