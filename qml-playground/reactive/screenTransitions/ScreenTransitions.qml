import QtQuick 2.14

Item {
    property bool homeScreenVisible: true
    property bool homeScreenEnabled: false
    property bool mediaScreenVisible: false
    property bool doorClosedScreenVisible: false

    Connections {
        target: homeScreen
        function onMediaNavigationRequested() {
            homeScreenVisible = false
            mediaScreenVisible = true
        }

        function onQuitRequested() {
             Qt.callLater(Qt.quit)
        }
    }

    Connections {
        target: mediaScreen
        function onHomeNavigationRequested() {
            homeScreenVisible = true
            mediaScreenVisible = false
        }
    }

    Connections {
        target: pacio
        function onDoorOpenned() {
            homeScreenVisible = true
            homeScreenEnabled = true
            mediaScreenVisible = false
            doorClosedScreenVisible = false
        }
        function onDoorClosed() {
            homeScreenVisible = false
            mediaScreenVisible = false
            doorClosedScreenVisible = true
        }
    }
}