linux-base:
	docker build -t linux-base:latest -f linux-base-dockerfile .

linux-base-publish:
	docker tag linux-base:latest jajuatsahaj/linux-base:latest
	docker push jajuatsahaj/linux-base:latest

tiny-tools:
	docker build -t tiny-tools:latest -f tiny-tools-dockerfile .

tiny-tools-publish:
	docker tag tiny-tools:latest jajuatsahaj/tiny-tools:latest
	docker push jajuatsahaj/tiny-tools:latest
