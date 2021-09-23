// run: QML2_IMPORT_PATH=. qmlscene Main.qml

import QtQuick 2.14

Item {
    width: 300; height: 300
    
    // create Pacio and add Connection in TimeState
    Pacio {
        id: pacio
    }

    TimeState {
        id: timeState
    }

    Header {
        state: timeState
    }

    Footer {
        state: timeState
    }

    Component.onCompleted: { 
        console.log(`main: ${timeState.time}`)
    }
}