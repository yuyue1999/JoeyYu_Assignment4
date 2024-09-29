install:
	pip install --upgrade pip && pip install -r requirements.txt

format:
	black *.py

lint:
	ruff check *.py

test:
	python -m pytest -cov=main test_*.py 

all: install format lint