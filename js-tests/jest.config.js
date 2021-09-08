/*
 * For a detailed explanation regarding each configuration property, visit:
 * https://jestjs.io/docs/configuration
 */

module.exports = {
  clearMocks: true,
  // collectCoverage: true,
  // coverageDirectory: "coverage",
  // coverageProvider: "v8",
  testRegex: "(/__tests__/.*|(\\.|/)(test|spec))\\.(jsx?|js?|tsx?|ts?)$",
  transform: {
     "^.+\\.(js|jsx|mjs)$": "<rootDir>/fileTransformer.js",
  },
  transformIgnorePatterns:["<rootDir>/node_modules/"],
  testPathIgnorePatterns: ["<rootDir>/build/", "<rootDir>/node_modules/"],
};
