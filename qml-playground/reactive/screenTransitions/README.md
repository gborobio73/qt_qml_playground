# Screen transitions

Transitions are triggered by either button presses (e.g. go to media screen) or Pacio events (e.g. flight is closed)
`ScreenTransitions.qml` holds the "state" of the screens: what's visible and what is not.
Screens use this component to show/hide themselves.

`ScreenTransitions.qml` subscribes to all possible events: navigation requests and Pacio events and updates its state (state of the screens)

`main.qml` is the starting point.

Run by `QML2_IMPORT_PATH=. qmlscene main.qml`
