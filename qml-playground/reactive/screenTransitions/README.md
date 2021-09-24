# Screen transitions

Transitions are triggered by either button presses (e.g. go to media screen) or external events (e.g. door is closed).
`ScreenTransitions.qml` holds the "state" of the screens. Screens use this component to set their state

`ScreenTransitions.qml` subscribes to all possible events: navigation requests from different screens and external events, and it updates its state (state of the screens).

![transitions](./screen_transitions.jpg)

```qml
// ScreenTransition.qml

    // example: listen to homeScreen requesting navigation to media screen
    Connections {
        target: homeScreen
        function onMediaNavigationRequested() {
            welcomeScreenState = screenStates.hide
            homeScreenState = screenStates.hide
            mediaScreenState = screenStates.show
            doorClosedScreenState = screenStates.hide
        }
    }
```

`main.qml` is the starting point, and `HomeScreen.qml` is the screen shown on startup.

Run by `QML2_IMPORT_PATH=. qmlscene main.qml`
