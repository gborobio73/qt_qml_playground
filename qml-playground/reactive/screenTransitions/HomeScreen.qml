import QtQuick 2.14

Screen {
    state: screenTransitions.homeScreenState
    
    signal mediaNavigationRequested()
    signal quitRequested()

    HomeScreenNavigationBar {
        id: navBar
    }

    Rectangle {
        x:0; y:50; width: 400; height: 250
        color: "yellow"
        Text {
            x: 10; y: 10
            text: "Main screen"
        }
    }

    Connections {
        target: navBar
        function onMediaButtonPressed() {
            mediaNavigationRequested()
        }
        function onQuitButtonPressed() {
            quitRequested()
        }
    }
}