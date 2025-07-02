# Conventional Commits

Этот проект использует [Conventional Commits](https://www.conventionalcommits.org/) для стандартизации сообщений коммитов.

## Формат сообщения коммита

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

## Типы коммитов

### Основные типы

- **feat**: Новая функция
- **fix**: Исправление ошибки
- **docs**: Изменения в документации
- **style**: Изменения, не влияющие на смысл кода (пробелы, форматирование, отсутствующие точки с запятой и т.д.)
- **refactor**: Рефакторинг кода
- **perf**: Улучшение производительности
- **test**: Добавление или исправление тестов
- **build**: Изменения в системе сборки или внешних зависимостях
- **ci**: Изменения в файлах и скриптах конфигурации CI
- **chore**: Другие изменения, не затрагивающие src или тестовые файлы
- **revert**: Откат предыдущего коммита

### Дополнительные типы

- **security**: Исправления уязвимостей безопасности
- **deps**: Обновление зависимостей

## Примеры

### Простой коммит
```
feat: add user authentication
```

### Коммит с областью действия
```
feat(auth): add JWT token validation
```

### Коммит с телом
```
feat: add user authentication

This commit adds JWT-based authentication system with the following features:
- User registration and login
- Token generation and validation
- Password hashing with bcrypt
- Session management

Closes #123
```

### Коммит с breaking changes
```
feat!: change authentication API

BREAKING CHANGE: The authentication API has been completely rewritten.
The old endpoints are no longer available. Please refer to the migration guide.

Migration guide: docs/migration/auth-v2.md
```

### Исправление ошибки
```
fix: resolve memory leak in user session handling

The session cleanup was not properly implemented, causing memory leaks
after user logout. This commit adds proper cleanup logic.

Fixes #456
```

## Правила

1. **Тип обязателен**: Каждый коммит должен начинаться с типа
2. **Описание обязательно**: Должно быть кратким и описательным
3. **Используйте императив**: "add" вместо "added", "fix" вместо "fixed"
4. **Не заканчивайте точкой**: Описание не должно заканчиваться точкой
5. **Ограничьте длину**: Первая строка не более 72 символов
6. **Используйте нижний регистр**: Тип и описание в нижнем регистре

## Настройка в проекте

### Pre-commit hooks

Проект использует pre-commit hooks для автоматической проверки:

```bash
# Установка pre-commit
pip install pre-commit

# Установка hooks
pre-commit install

# Установка commit-msg hook для проверки сообщений
pre-commit install --hook-type commit-msg
```

### GitHub Actions

CI/CD pipeline автоматически проверяет формат коммитов с помощью commitlint.

### Локальная проверка

Для проверки сообщения коммита локально:

```bash
# Установка commitlint
npm install -g @commitlint/cli @commitlint/config-conventional

# Проверка сообщения
echo "feat: add new feature" | commitlint
```

## Инструменты

### VS Code

Рекомендуемые расширения:
- **Conventional Commits**: Автодополнение для Conventional Commits
- **GitLens**: Улучшенная интеграция с Git

### Git Hooks

Проект настроен с помощью:
- **pre-commit**: Автоматическая проверка кода
- **commit-msg**: Проверка формата сообщений коммитов

### Автоматическая генерация

Для автоматической генерации сообщений коммитов:

```bash
# Установка commitizen
npm install -g commitizen cz-conventional-changelog

# Использование
git cz
```

## Связанные ссылки

- [Conventional Commits Specification](https://www.conventionalcommits.org/)
- [Angular Commit Message Guidelines](https://github.com/angular/angular/blob/main/CONTRIBUTING.md#-commit-message-format)
- [Commitizen](http://commitizen.github.io/cz-cli/)
- [Commitlint](https://commitlint.js.org/) 