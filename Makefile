.PHONY: help install install-dev test lint format clean docker-build docker-up docker-down

# Default target
help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Installation
install: ## Install production dependencies
	pip install -r requirements.txt

install-dev: ## Install development dependencies
	pip install -r requirements.txt
	pip install -r requirements-dev.txt
	pre-commit install
	pre-commit install --hook-type commit-msg

# Development
dev: ## Run development server
	bash scripts/run_dev.sh

test: ## Run tests
	bash scripts/run_tests.sh

test-coverage: ## Run tests with coverage
	PYTHONPATH=src pytest tests/ --cov=src --cov-report=html --cov-report=term

lint: ## Run linting
	bash scripts/lint.sh

format: ## Format code
	black src/ tests/
	isort src/ tests/

format-check: ## Check code formatting
	black --check src/ tests/
	isort --check-only src/ tests/

# Security
security: ## Run security checks
	bandit -r src/
	safety check

# Docker
docker-build: ## Build Docker image
	docker build -t your-project-name .

docker-up: ## Start Docker containers
	docker-compose up --build -d

docker-down: ## Stop Docker containers
	docker-compose down

docker-logs: ## Show Docker logs
	docker-compose logs -f

# Cleanup
clean: ## Clean up generated files
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	rm -rf build/
	rm -rf dist/
	rm -rf .pytest_cache/
	rm -rf .coverage
	rm -rf htmlcov/
	rm -rf .mypy_cache/

# Git
git-hooks: ## Install git hooks
	pre-commit install
	pre-commit install --hook-type commit-msg

# Setup
setup: install-dev git-hooks ## Complete project setup
	@echo "Project setup complete!"

# CI/CD
ci: lint test ## Run CI checks
	@echo "CI checks completed successfully!"

# Release
release: ## Create a new release
	@echo "Creating new release..."
	@read -p "Enter version (e.g., 1.0.0): " version; \
	echo "Releasing version $$version"; \
	git tag -a v$$version -m "Release v$$version"; \
	git push origin v$$version

# Database
db-migrate: ## Run database migrations (if applicable)
	@echo "Running database migrations..."

db-seed: ## Seed database with initial data (if applicable)
	@echo "Seeding database..."

# Documentation
docs: ## Generate documentation
	@echo "Generating documentation..."

docs-serve: ## Serve documentation locally
	@echo "Serving documentation at http://localhost:8000"

# Monitoring
logs: ## Show application logs
	@echo "Showing application logs..."

# Backup
backup: ## Create backup of important data
	@echo "Creating backup..."

# Restore
restore: ## Restore from backup
	@echo "Restoring from backup..." 