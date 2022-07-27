docker-user = jajuatsahaj

%:
	docker build -t $*:latest -f $*-dockerfile .

%-publish:
	docker tag $*:latest $(docker-user)/$*:latest
	docker push $(docker-user)/$*:latest

linux-base:
linux-base-publish: linux-base
tiny-tools:
tiny-tools-publish: tiny-tools
