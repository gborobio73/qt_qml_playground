import QtQuick 2.14

Screen { 
    state: screenTransitions.screens.mediaScreenState
    // state: screenTransitions.mediaScreenState

    MediaScreenNavigationBar {
        id: navBar
    }
    Rectangle {
        x:0; y:50; width: 400; height: 0
        color: "yellow"
        Text {
            id: text
            x: 10; y: 10
            text: "Media screen"
        }
    }

    Connections {
        target: navBar
        function onPlayButtonPressed() {
            text.text = `Playing a movie`
        }
        function onStopButtonPressed() {
            text.text = `Movie stopped`
        }

    }

    Component.onCompleted: {
        navBar.onHomeButtonPressed.connect(navigationSignals.homeNavigationRequested)
    }
}