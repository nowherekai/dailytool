FILES=$(shell ls)

all: update
update:
	git pull

commit: $(FILES)
	git add .
	git commit -m "change"
	git push



