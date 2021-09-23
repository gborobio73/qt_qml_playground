// run: QML2_IMPORT_PATH=. qmlscene Main.qml

import QtQuick 2.14

Item {
    width: 300; height: 300
    
    EventHandler {
        id: eventHandler
    }

    Header {
        eventHandler: eventHandler
    }

    Footer {
        eventHandler: eventHandler
    }
}