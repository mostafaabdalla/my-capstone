setup:
	python3 -m venv venv
	. venv/bin/activate

install:
	pip3 install --upgrade pip && pip3 install pylint
#	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && chmod +x ./hadolint

lint:
	hadolint Dockerfile
#	pylint --disable=R,C,W1203 app.py

all: install lint