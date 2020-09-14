.PHONY: init push-test delete-test

init:
	git remote add private git@github.com:eeveebank/pair-programming-test

push-test:
	git pull -u private car-api && git push -u origin car-api

delete-test:
	git reset --HARD && git checkout master && git push -d origin car-api && git branch -d car-api