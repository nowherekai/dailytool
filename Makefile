FILES=$(shell ls)

all: update
update: $(FILES)
	touch update
	git pull

commit: $(FILES)
	touch commit
	git add .
	git commit -m "change"
	git push



