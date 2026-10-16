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

## Releases

This template uses [Release Please](https://github.com/googleapis/release-please).

Flow:

1. Merge conventional commits into `master` (`feat:`, `fix:`, …)
2. Release Please opens/updates a **Release PR** (changelog + version bump)
3. Merge that PR → tag `vX.Y.Z` + GitHub Release are created automatically

Manual tagging is optional and usually unnecessary.

