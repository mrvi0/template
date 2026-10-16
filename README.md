# project_title

project_description

**Repo:** owner/repo_name

## Stack

- Python 3.11+
- [uv](https://docs.astral.sh/uv/) for env + deps
- ruff + pytest

## Quick start

```bash
# install uv if needed: https://docs.astral.sh/uv/getting-started/installation/
uv sync --group dev
cp .env.example .env
make hooks
make test
make run
```

## Layout

- `src/` — application code
- `tests/` — pytest
- `pyproject.toml` — deps (uv)
- `.env.example` — env template
- `Makefile` — sync / run / test / lint / hooks

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
