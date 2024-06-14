ubuntu-rel = lunar
docker-user = jaju
clojure-version = 1.11.3.1463

%:
	CLOJURE_VERSION=$(clojure-version) docker build -t $*:latest -f $*-dockerfile \
									--build-arg CLOJURE_VERSION=$(clojure-version) \
									--build-arg UBUNTU_REL=$(ubuntu-rel) \
									.

%-publish:
	docker tag $*:latest $(docker-user)/$*:latest
	docker push $(docker-user)/$*:latest

linux-base:
linux-base-publish: linux-base
tiny-tools:
tiny-tools-publish: tiny-tools
