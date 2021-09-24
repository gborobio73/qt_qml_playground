import QtQuick 2.14

Item {
    property string welcomeScreenState: screenStates.show
    property string homeScreenState: screenStates.hide
    property string mediaScreenState: screenStates.hide
    property string doorClosedScreenState: screenStates.hide

    ScreenStates {
        id: screenStates
    }

    Connections {
        target: homeScreen
        function onMediaNavigationRequested() {
            welcomeScreenState = screenStates.hide
            homeScreenState = screenStates.hide
            mediaScreenState = screenStates.show
            doorClosedScreenState = screenStates.hide
        }

        function onQuitRequested() {
             Qt.callLater(Qt.quit)
        }
    }

    Connections {
        target: mediaScreen
        function onHomeNavigationRequested() {
            welcomeScreenState = screenStates.hide
            homeScreenState = screenStates.show
            mediaScreenState = screenStates.hide
            doorClosedScreenState = screenStates.hide
        }
    }

    Connections {
        target: externalEvents
        function onDoorOpenned() {
            welcomeScreenState = screenStates.hide
            homeScreenState = screenStates.show
            mediaScreenState = screenStates.hide
            doorClosedScreenState = screenStates.hide
        }
        function onDoorClosed() {
            welcomeScreenState = screenStates.hide
            homeScreenState = screenStates.hide
            mediaScreenState = screenStates.hide
            doorClosedScreenState = screenStates.show
        }
    }
}