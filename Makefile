.PHONY: sync run test lint fmt hooks

sync:
	uv sync --group dev

run:
	uv run python -m src.main

test:
	uv run pytest

lint:
	uv run ruff check src tests
	uv run ruff format --check src tests

fmt:
	uv run ruff check --fix src tests
	uv run ruff format src tests

hooks:
	uv sync --group dev
	uv run pre-commit install
	uv run pre-commit install --hook-type commit-msg
