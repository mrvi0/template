# Contributing

Thanks for contributing to **project_title**.

## Development setup

Requires [uv](https://docs.astral.sh/uv/).

```bash
uv sync --group dev
cp .env.example .env
make hooks
make test
```

## Workflow

1. Create a branch from `master`
2. Make focused changes
3. Run `make lint` and `make test`
4. Open a Pull Request against `master`

## Commit messages

Use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` new feature
- `fix:` bug fix
- `docs:` documentation
- `chore:` tooling / maintenance
- `refactor:` code change without behavior change
- `test:` tests only

Examples:

- `feat: add slack notifications`
- `fix: handle empty API response`

The commit-msg hook (via `make hooks`) rejects non-conventional subjects.

## Pull requests

- Keep PRs small and reviewable
- Describe **what** changed and **why**
- Link related issues when applicable
- Do not commit secrets, `.env`, or large binaries
