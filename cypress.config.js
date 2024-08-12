const { defineConfig } = require('cypress')
const cucumber = require("cypress-cucumber-preprocessor").default

module.exports = defineConfig({
  defaultCommandTimeout: 10000,
  retries: 1,
  viewportHeight: 768,
  viewportWidth: 1440,
  e2e: {
    specPattern: "**/*.feature",
    setupNodeEvents(on, config) {
      on("file:preprocessor", cucumber());
    }
  },
  env: {
    allureReuseAfterSpec: true,
    allure: true,
    baseUrl: 'https://www.advantageonlineshopping.com/#/',
    baseApi: 'https://www.advantageonlineshopping.com/catalog/api/v1/products'
  },
})