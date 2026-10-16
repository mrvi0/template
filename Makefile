.PHONY: run test lint fmt install

install:
	python -m pip install -r requirements.txt -r requirements-dev.txt

run:
	python -m src.main

test:
	pytest

lint:
	ruff check src tests
	ruff format --check src tests

fmt:
	ruff check --fix src tests
	ruff format src tests
