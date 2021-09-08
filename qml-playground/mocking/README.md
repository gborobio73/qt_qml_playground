# Mocking QML components

## Run

```shell
cd qml
qmlscene Main.qml
```

`Main` uses a component `YellowSquare` that has a `Log` component as `property Log myLog: Log {}`

## Tests

```shell
cd tests
/usr/local/opt/qt5/bin/qmltestrunner -input tst_YellowSquare.qml
```

In folder `mocks` we have created a `MockLog` component that "overrides" the info method.
`tst_Main.qml` defines two tests:

- a test that clicks on the yellow square a few times and in the console we can see that it's the fake Log component writing to the output.
- a test that asserts that the log component is called
