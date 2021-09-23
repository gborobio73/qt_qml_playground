// run: QML2_IMPORT_PATH=. qmlscene Main.qml

import QtQuick 2.14

Item {
    width: 300; height: 300
    
    TimeState {
        id: timeState
    }

    Header {
        state: timeState
    }

    Footer {
        state: timeState
    }

    EventHandler {
        state: timeState
    }

    // create Pacio and add Connection to TimeState

    Component.onCompleted: { 
        console.log(`main: ${timeState.time}`)
    }
}