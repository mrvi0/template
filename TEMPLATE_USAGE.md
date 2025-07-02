# Использование шаблона проекта

Этот репозиторий является шаблоном для создания новых проектов с полной настройкой CI/CD, линтинга, тестирования и других инструментов разработки.

## 🚀 Быстрый старт

### 1. Создание нового проекта из шаблона

```bash
# Клонируйте шаблон
git clone https://github.com/mrvi0/template.git your-new-project
cd your-new-project

# Удалите историю git и создайте новый репозиторий
rm -rf .git
git init
git add .
git commit -m "feat: initial commit from template"
```

### 2. Настройка проекта

#### Обновление метаданных

1. **README.md**: Замените все упоминания `your_project_name`, `your_username` на реальные значения
2. **pyproject.toml**: Обновите `name`, `description`, `authors`
3. **package.json**: Обновите `name`, `description`, `author`
4. **Dockerfile**: Обновите комментарии и настройки
5. **docker-compose.yml**: Обновите `container_name` и `project-name`

#### Обновление ссылок

Замените все ссылки на GitHub в следующих файлах:
- `.github/workflows/*.yml`
- `.github/dependabot.yml`
- `.versionrc`
- `CHANGELOG.md`
- `README.md`

### 3. Настройка окружения

```bash
# Создание виртуального окружения
python -m venv .venv
source .venv/bin/activate  # Linux/macOS
# .\.venv\Scripts\activate  # Windows

# Установка зависимостей
pip install -r requirements.txt
pip install -r requirements-dev.txt

# Настройка pre-commit hooks
pre-commit install
pre-commit install --hook-type commit-msg

# Настройка переменных окружения
cp env.example .env
# Отредактируйте .env файл
```

### 4. Первый коммит

```bash
# Добавьте все файлы
git add .

# Сделайте первый коммит
git commit -m "feat: initial project setup"

# Добавьте удаленный репозиторий
git remote add origin https://github.com/your-username/your-project-name.git
git push -u origin main
```

## 📁 Структура проекта

```
template/
├── .github/                    # GitHub Actions и настройки
│   ├── workflows/             # CI/CD пайплайны
│   ├── ISSUE_TEMPLATE/        # Шаблоны для issues
│   └── dependabot.yml         # Автообновление зависимостей
├── .vscode/                   # Настройки VS Code
├── config/                    # Конфигурационные файлы
├── docs/                      # Документация
├── scripts/                   # Скрипты для разработки
├── src/                       # Исходный код
├── tests/                     # Тесты
├── .gitignore                 # Исключения Git
├── .pre-commit-config.yaml    # Pre-commit hooks
├── .commitlintrc.json         # Правила коммитов
├── .eslintrc.json             # ESLint конфигурация
├── .prettierrc                # Prettier конфигурация
├── jest.config.js             # Jest конфигурация
├── jest.setup.js              # Jest настройки
├── Makefile                   # Команды для разработки
├── package.json               # Node.js зависимости
├── pyproject.toml             # Python конфигурация
├── requirements.txt           # Python зависимости
├── requirements-dev.txt       # Python dev зависимости
├── docker-compose.yml         # Docker Compose
├── Dockerfile                 # Docker образ
├── env.example                # Пример переменных окружения
├── README.md                  # Основная документация
├── CONTRIBUTING.md            # Руководство для контрибьюторов
├── SETUP.md                   # Инструкции по настройке
├── COMMIT_CONVENTION.md       # Правила коммитов
├── TEMPLATE_USAGE.md          # Этот файл
└── CHANGELOG.md               # Журнал изменений
```

## 🔧 Настройка для разных типов проектов

### Python проект

1. Удалите Node.js файлы:
   ```bash
   rm package.json jest.config.js jest.setup.js .eslintrc.json .prettierrc
   ```

2. Обновите GitHub Actions, убрав Node.js части

3. Обновите `.pre-commit-config.yaml`, убрав Node.js hooks

### Node.js проект

1. Удалите Python файлы:
   ```bash
   rm pyproject.toml requirements.txt requirements-dev.txt
   ```

2. Обновите GitHub Actions, убрав Python части

3. Обновите `.pre-commit-config.yaml`, убрав Python hooks

### Веб-приложение

1. Добавьте зависимости для веб-фреймворка
2. Настройте статические файлы
3. Добавьте конфигурацию для production

### API сервис

1. Добавьте зависимости для API фреймворка
2. Настройте документацию API (Swagger/OpenAPI)
3. Добавьте middleware для логирования и мониторинга

## 🛠 Инструменты и их назначение

### Линтинг и форматирование
- **Ruff/Black**: Форматирование Python кода
- **ESLint/Prettier**: Линтинг и форматирование JavaScript
- **isort**: Сортировка импортов Python
- **pre-commit**: Автоматические проверки перед коммитом

### Тестирование
- **pytest**: Тестирование Python кода
- **Jest**: Тестирование JavaScript кода
- **coverage**: Отчеты о покрытии кода

### CI/CD
- **GitHub Actions**: Автоматизация процессов
- **Docker**: Контейнеризация
- **Dependabot**: Автообновление зависимостей

### Безопасность
- **CodeQL**: Анализ безопасности кода
- **Bandit**: Проверка безопасности Python
- **Safety**: Проверка уязвимостей зависимостей

### Документация
- **Conventional Commits**: Стандартизация коммитов
- **CHANGELOG**: Автоматическое обновление журнала изменений

## 📝 Рекомендации по использованию

### Коммиты
Всегда используйте Conventional Commits:
```bash
feat: add new feature
fix: resolve bug
docs: update documentation
refactor: improve code structure
test: add unit tests
```

### Ветки
Используйте feature branches:
```bash
git checkout -b feat/new-feature
git checkout -b fix/bug-fix
git checkout -b docs/update-readme
```

### Pull Requests
1. Создайте PR с описанием изменений
2. Убедитесь, что все тесты проходят
3. Попросите ревью у коллег
4. Используйте squash merge для чистой истории

### Релизы
1. Создайте тег: `git tag v1.0.0`
2. Запушьте тег: `git push origin v1.0.0`
3. GitHub Actions автоматически создаст релиз

## 🚨 Устранение неполадок

### Проблемы с pre-commit
```bash
# Переустановка hooks
pre-commit uninstall
pre-commit install

# Принудительный запуск
pre-commit run --all-files
```

### Проблемы с тестами
```bash
# Очистка кэша
pytest --cache-clear
npm test -- --clearCache

# Подробный вывод
pytest -v -s
```

### Проблемы с Docker
```bash
# Пересборка образа
docker-compose down
docker-compose build --no-cache
docker-compose up
```

## 📚 Полезные ссылки

- [Conventional Commits](https://www.conventionalcommits.org/)
- [Pre-commit](https://pre-commit.com/)
- [GitHub Actions](https://docs.github.com/en/actions)
- [Docker](https://docs.docker.com/)
- [Pytest](https://docs.pytest.org/)
- [Jest](https://jestjs.io/docs/getting-started)

## 🤝 Поддержка

Если у вас есть вопросы или предложения по улучшению шаблона:

1. Создайте issue в репозитории
2. Предложите изменения через Pull Request
3. Обратитесь к документации в папке `docs/`

---

**Удачной разработки! 🚀** 