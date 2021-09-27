import QtQuick 2.14

Screen {
    state: screenTransitions.screens.homeScreenState
    // state: screenTransitions.homeScreenState
    
    onStateChanged: {
        console.log(`home screen state change`)
    }

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

    Component.onCompleted: {
        navBar.onMediaButtonPressed.connect(navigationSignals.mediaNavigationRequested)
        navBar.onQuitButtonPressed.connect(navigationSignals.quitRequested)
    }
}