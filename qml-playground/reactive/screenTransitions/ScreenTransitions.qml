import QtQuick 2.14

Item {
    property bool homeScreenVisible: true
    property bool homeScreenEnabled: false
    property bool mediaScreenVisible: false
    property bool flightClosedVisible: false

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
        function onFlightOpenned() {
            homeScreenVisible = true
            homeScreenEnabled = true
            mediaScreenVisible = false
            flightClosedVisible = false
        }
        function onFlightClosed() {
            homeScreenVisible = false
            mediaScreenVisible = false
            flightClosedVisible = true
        }
    }
}