# Contributing

Thanks for contributing to **project_title**.

## Development setup

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt -r requirements-dev.txt
cp .env.example .env
make test
```

Enable git hooks:

```bash
make hooks
# or:
# pre-commit install
# pre-commit install --hook-type commit-msg
```

The commit-msg hook rejects non-conventional subjects (requires prefixes like `feat:`, `fix:`, `docs:`, `chore:`).

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

## Pull requests

- Keep PRs small and reviewable
- Describe **what** changed and **why**
- Link related issues when applicable
- Do not commit secrets, `.env`, or large binaries
