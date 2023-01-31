install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py # For upto standards

lint:
	pylint --disable=R,C hello.py # only gives warnings

test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install lint test