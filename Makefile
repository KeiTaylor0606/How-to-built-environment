all:
	git add .
	git commit -m "commit all changes"
	git push origin HEAD

rm:
	git add README.md
	git commit -m "modified README"
	git push origin HEAD

mf:
	git add Makefile
	git commit -m "Makefile"
	git push origin HEAD