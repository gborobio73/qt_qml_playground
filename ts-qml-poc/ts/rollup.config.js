// https://github.com/Microsoft/TypeScript/issues/18442#issuecomment-749896695

import typescript from 'rollup-plugin-typescript2';

export default [
  // ES module build (replaces broken basic TypeScript compilation)
  // * ref: <https://github.com/microsoft/TypeScript/issues/18442> , <https://github.com/alshdavid/rxjs/blob/main/rollup.config.js#L10>
  // * ref: <https://github.com/microsoft/TypeScript/pull/35148>
  // * ref: <https://github.com/microsoft/TypeScript/issues/37582>
  {
    preserveModules: false, // or `false` to bundle as a single file
    input: ['src/index.ts'],
    // output: [{ dir: '../src/js', format: 'amd', entryFileNames: '[name].js', preserveModules: false, name: "version" }],
    output: [{ dir: '../src/js', format: 'es', entryFileNames: '[name].mjs' }],
    plugins: [typescript({ tsconfig: './tsconfig.json' })],
  },
  // https://github.com/ezolenko/rollup-plugin-typescript2
];