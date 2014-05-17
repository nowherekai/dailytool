FILES=$(shell ls)

update: $(FILES)
	git pull

commit: $(FILES)
	touch commit
	git add .
	git commit -m "change"
	git push



