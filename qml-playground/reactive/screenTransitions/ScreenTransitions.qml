import QtQuick 2.14

Item {
    id: root
    property var screens: getNewStateShowingScreen('welcomeScreenState')
    
    QtObject {
        id: screensObj
        property string welcomeScreenState: screenStates.show
        property string homeScreenState: screenStates.hide
        property string mediaScreenState: screenStates.hide
        property string doorClosedScreenState: screenStates.hide
    }

    property string a: "a"
    property string b: "b"

    ScreenStates {
        id: screenStates
    }

    Connections {
        target: navigationSignals
        function onMediaNavigationRequested() {
            screens = Qt.binding(function () { 
                return getNewStateShowingScreen('mediaScreenState')
            })
        }

        function onHomeNavigationRequested() {
            screens = Qt.binding(function () { 
                return getNewStateShowingScreen('homeScreenState')
            })
        }

        function onQuitRequested() {
             Qt.callLater(Qt.quit)
        }
    }

    Connections {
        target: externalEvents
        function onDoorOpenned() {
            screens = Qt.binding(function () { 
                return getNewStateShowingScreen('homeScreenState')
            })
        }
        function onDoorClosed() {
            screens = Qt.binding(function () { 
                return getNewStateShowingScreen('doorClosedScreenState')
            })
        }
    }

    function getNewStateShowingScreen(screen) {
        var screens = {
            welcomeScreenState: screenStates.hide,
            homeScreenState: screenStates.hide,
            mediaScreenState: screenStates.hide,
            doorClosedScreenState: screenStates.hide 
        }
        screens[screen] = screenStates.show
        return screens
    }

    function printProps(obj) {
        const keys = Object.keys(obj)
        for(var i=0;i< keys.length; i++){
            console.log(`${keys[i]} is ${obj[keys[i]]}`)
        }
    }

    Component.onCompleted: {
        printProps(screensObj)
    }
}