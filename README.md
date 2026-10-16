# project_title

project_description

**Repo:** owner/repo_name

## Stack

- Python 3.11+
- ruff (lint/format) + pytest

## Quick start

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt -r requirements-dev.txt
cp .env.example .env
make hooks
make test
make run
```

## Layout

- `src/` — application code
- `tests/` — pytest
- `.env.example` — env template
- `Makefile` — run / test / lint / hooks

## Development

```bash
make lint
make fmt
make test
```

## Git hooks

```bash
make hooks
```

Commit messages must follow Conventional Commits (`feat:`, `fix:`, `docs:`, `chore:`, ...).
The commit-msg hook enforces this after `make hooks`.
