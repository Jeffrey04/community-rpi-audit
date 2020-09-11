.PHONY: setup run

run: miniooni
	/usr/bin/bash runner.sh

setup: miniooni
	mv runner.service /etc/systemd/system/ \
		&& systemctl enable runner.service

miniooni:
	git clone --depth=1 https://github.com/ooni/probe-engine \
		&& cd probe-engine \
		&& go build -tags DISABLE_QUIC -v ./cmd/miniooni \
		&& mv miniooni ..
