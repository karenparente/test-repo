all: commands_test.txt readme.txt

commands_test.txt:
	touch commands_test.txt

readme.txt : toc.txt
	echo "This file contains the following number of entries" > readme.txt
	wc -l toc.txt | egrep -o "[0-9]+" >> readme.txt

clean:
	rm commands_test.txt
	rm readme.txt

