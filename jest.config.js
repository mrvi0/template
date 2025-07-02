module.exports = {
  // Тестовая среда
  testEnvironment: 'node',
  
  // Директории для поиска тестов
  testMatch: [
    '**/__tests__/**/*.js',
    '**/?(*.)+(spec|test).js'
  ],
  
  // Директории для игнорирования
  testPathIgnorePatterns: [
    '/node_modules/',
    '/dist/',
    '/build/'
  ],
  
  // Сбор покрытия кода
  collectCoverage: true,
  collectCoverageFrom: [
    'src/**/*.js',
    '!src/**/*.test.js',
    '!src/**/*.spec.js'
  ],
  
  // Директория для отчетов о покрытии
  coverageDirectory: 'coverage',
  
  // Форматы отчетов о покрытии
  coverageReporters: [
    'text',
    'lcov',
    'html'
  ],
  
  // Минимальный процент покрытия
  coverageThreshold: {
    global: {
      branches: 80,
      functions: 80,
      lines: 80,
      statements: 80
    }
  },
  
  // Настройки для модулей
  moduleFileExtensions: ['js', 'json'],
  
  // Корневая директория для модулей
  moduleDirectories: ['node_modules', 'src'],
  
  // Настройки для асинхронных тестов
  testTimeout: 10000,
  
  // Настройки для моков
  setupFilesAfterEnv: ['<rootDir>/jest.setup.js']
}; 