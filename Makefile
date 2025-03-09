docker-build:
	docker build -t us-west2-docker.pkg.dev/opennovel-431106/umami/umami:latest .

docker-push:
	docker tag docker.umami.is/umami-software/umami:postgresql-latest us-west2-docker.pkg.dev/opennovel-431106/umami/umami:latest
	docker push us-west2-docker.pkg.dev/opennovel-431106/umami/umami:latest

docker-bp:
	make docker-build && make docker-push