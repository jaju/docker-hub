docker-user = jajuatsahaj

%:
	docker build -t linux-base:latest -f $*-dockerfile .

%-publish:
	docker tag $*:latest $(docker-user)/$*:latest
	docker push $(docker-user)/$*:latest

linux-base:
linux-base-publish: linux-base
tiny-tools:
tiny-tools-publish: tiny-tools
