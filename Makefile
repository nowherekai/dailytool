FILES=$(shell ls)

all: update
update:
	git pull

commit: $(FILES)
	touch target.commit
	git add .
	git commit -m "change"
	git push



