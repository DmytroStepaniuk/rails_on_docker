build:
	docker build -t rails_on_docker --file Dockerfile.ruby_latest .

shell:
	docker run --rm -it --volume $$PWD:/app:cached --workdir /app --tmpfs /tmp:rw,noexec,nosuid,size=65536k --entrypoint /bin/bash rails_on_docker
