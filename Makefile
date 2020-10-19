setup:
	python3.5 -m venv ~/.udacity-devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest test.py
	
loadtest:
	locust

lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint test
