FILES=$(shell ls)

all: update
update:
	echo $(FILES)
	git pull

commit:
	git add .
	git commit -m "change"
	git push



