import QtQuick 2.14

Item {
    width: 400; height: 300
    
    Item {
        id: component1
        property string data: ""
        signal newData(string data)
        onDataChanged: {
            newData(data)
        }
        
    }

    Item {
        id: component2
        Connections {
            target: component1
            function onNewData(data) {
                console.log(`I'm doing something with "${data}"`)
            }
        }
    }

    Component.onCompleted: {
        component1.data = "new reactive data"
        Qt.callLater(Qt.quit)
    }
    
}