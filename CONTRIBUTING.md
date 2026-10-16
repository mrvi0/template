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

Optional: `pre-commit install`

## Workflow

1. Create a branch from `master`
2. Make focused changes
3. Run `make lint` and `make test`
4. Open a Pull Request against `master`

## Commit messages

Prefer [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` new feature
- `fix:` bug fix
- `docs:` documentation
- `chore:` tooling / maintenance
- `refactor:` code change without behavior change
- `test:` tests only

## Pull requests

- Keep PRs small and reviewable
- Describe **what** changed and **why**
- Link related issues when applicable
- Do not commit secrets, `.env`, or large binaries
