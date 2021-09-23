import QtQuick 2.14

Item {
    width: 400; height: 300
    
    Item {
        id: component1
        property string data: ""
        function updateData(dt) {
            data = dt
            component2.doSomething(data)
        }
    }

    Item {
        id: component2
        function doSomething(data) {
            console.log(`I'm doing something with "${data}"`)
        }
    }

    Component.onCompleted: {
        component1.updateData("new imperative data")
        Qt.callLater(Qt.quit)
    }
    
}