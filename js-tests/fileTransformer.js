const babelJest = require('babel-jest').default;

module.exports = {
  process(src, ...rest) {
    const lines = src.split('\n')
    if (lines[0].startsWith('.pragma')) {
      return babelJest.process(lines.slice(1).join('\n'), ...rest);
    }
    return babelJest.process(src, ...rest);
  },
};