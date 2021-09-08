# ts-qml-poc

Using TypeScript with QML

Using rollup and rollup-plugin-typescript2 to generate `.mjs` files from TypeScript files.
See https://github.com/Microsoft/TypeScript/issues/18442#issuecomment-749896695

**Important**: rollup needs an entry file, which is defined as `ts/src/index.ts`. This file is also compiled to `.mjs` and it can be used to import JS functions from QML. In the future we could either remove it or bundle all JS files into a single one; what ever works best for us.

## Usage

Install TS dependencies

```shell
yarn install
```

Watch TS files and compile them as they are modified

```shell
yarn watch
```

Build TS files

```shell
yarn build
```

Run TS tests

```shell
yarn test
```

## TODOs

Can't make it work when using `.pragma library`.
See https://doc.qt.io/qt-5/qtqml-javascript-resources.html
