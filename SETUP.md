# Настройка проекта

Этот документ содержит пошаговые инструкции по настройке проекта для разработки.

## 🚀 Быстрый старт

### 1. Клонирование репозитория

```bash
git clone https://github.com/your-username/your-project-name.git
cd your-project-name
```

### 2. Настройка окружения

#### Python проект

```bash
# Создание виртуального окружения
python -m venv .venv

# Активация виртуального окружения
# Linux/macOS:
source .venv/bin/activate
# Windows:
# .\.venv\Scripts\activate

# Установка зависимостей
pip install -r requirements.txt
pip install -r requirements-dev.txt
```

#### Node.js проект

```bash
# Установка зависимостей
npm install
```

### 3. Настройка переменных окружения

```bash
# Копирование примера конфигурации
cp env.example .env

# Редактирование конфигурации
nano .env  # или ваш любимый редактор
```

### 4. Настройка pre-commit hooks

```bash
# Установка pre-commit
pip install pre-commit

# Установка hooks
pre-commit install
pre-commit install --hook-type commit-msg
```

### 5. Проверка установки

```bash
# Запуск тестов
bash scripts/run_tests.sh

# Запуск линтера
bash scripts/lint.sh

# Запуск приложения в режиме разработки
bash scripts/run_dev.sh
```

## 🔧 Дополнительная настройка

### IDE/Редактор

#### VS Code

Рекомендуемые расширения:
- **Python** (ms-python.python)
- **Pylance** (ms-python.vscode-pylance)
- **ESLint** (dbaeumer.vscode-eslint)
- **Prettier** (esbenp.prettier-vscode)
- **GitLens** (eamodio.gitlens)
- **Conventional Commits** (vivaxy.vscode-conventional-commits)

Настройки VS Code (`.vscode/settings.json`):
```json
{
  "python.defaultInterpreterPath": "./.venv/bin/python",
  "python.linting.enabled": true,
  "python.linting.pylintEnabled": false,
  "python.linting.flake8Enabled": true,
  "python.formatting.provider": "black",
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.organizeImports": true
  }
}
```

#### PyCharm

1. Откройте проект
2. Настройте интерпретатор Python (File → Settings → Project → Python Interpreter)
3. Установите плагины:
   - **BlackConnect**
   - **isort**
   - **GitToolBox**

### Git настройки

```bash
# Настройка имени и email
git config user.name "Your Name"
git config user.email "your.email@example.com"

# Настройка редактора по умолчанию
git config core.editor "code --wait"  # для VS Code
# git config core.editor "vim"  # для Vim
```

### Docker (опционально)

```bash
# Сборка образа
docker build -t your-project-name .

# Запуск с Docker Compose
docker-compose up --build
```

## 🧪 Тестирование

### Python

```bash
# Запуск всех тестов
pytest

# Запуск с покрытием
pytest --cov=src --cov-report=html

# Запуск конкретного теста
pytest tests/test_example.py::test_example_success

# Запуск в режиме watch
pytest --watch
```

### Node.js

```bash
# Запуск тестов
npm test

# Запуск с покрытием
npm run test:coverage

# Запуск в режиме watch
npm run test:watch
```

## 🔍 Отладка

### Python

```bash
# Запуск с отладчиком
python -m pdb src/main.py

# Или используйте ipdb для лучшего опыта
pip install ipdb
python -m ipdb src/main.py
```

### Node.js

```bash
# Запуск с отладчиком
node --inspect src/index.js

# Или используйте nodemon для автоматического перезапуска
npx nodemon --inspect src/index.js
```

## 📦 Сборка и развертывание

### Python

```bash
# Сборка пакета
python setup.py sdist bdist_wheel

# Или с Poetry
poetry build

# Установка в режиме разработки
pip install -e .
```

### Node.js

```bash
# Сборка проекта
npm run build

# Публикация пакета
npm publish
```

## 🚨 Устранение неполадок

### Проблемы с зависимостями

```bash
# Очистка кэша pip
pip cache purge

# Переустановка зависимостей
pip uninstall -r requirements.txt -y
pip install -r requirements.txt
```

### Проблемы с pre-commit

```bash
# Переустановка hooks
pre-commit uninstall
pre-commit install

# Принудительный запуск на всех файлах
pre-commit run --all-files
```

### Проблемы с тестами

```bash
# Очистка кэша pytest
pytest --cache-clear

# Запуск с подробным выводом
pytest -v -s
```

## 📚 Полезные команды

```bash
# Проверка стиля кода
bash scripts/lint.sh

# Форматирование кода
black src/ tests/
isort src/ tests/

# Проверка типов (Python)
mypy src/

# Проверка безопасности
bandit -r src/
safety check

# Обновление зависимостей
pip install --upgrade -r requirements.txt
npm update
```

## 🔗 Полезные ссылки

- [Python Style Guide (PEP 8)](https://www.python.org/dev/peps/pep-0008/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Pre-commit](https://pre-commit.com/)
- [Pytest Documentation](https://docs.pytest.org/)
- [Jest Documentation](https://jestjs.io/docs/getting-started) 