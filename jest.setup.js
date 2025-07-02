// Глобальные настройки для Jest

// Увеличиваем timeout для асинхронных тестов
jest.setTimeout(10000);

// Глобальные моки
global.console = {
  ...console,
  // Отключаем console.log в тестах
  log: jest.fn(),
  debug: jest.fn(),
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
};

// Очистка моков после каждого теста
afterEach(() => {
  jest.clearAllMocks();
});

// Глобальные переменные окружения для тестов
process.env.NODE_ENV = 'test';
process.env.TEST_DATABASE_URL = 'sqlite:///./test.db';
process.env.TEST_API_KEY = 'test_api_key'; 