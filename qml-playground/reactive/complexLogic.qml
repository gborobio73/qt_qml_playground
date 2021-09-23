import QtQuick 2.14

Item {
    width: 400; height: 300
    
    Item {
        id: thing1
        property string data: "" 
    }
    Item {
        id: thing2
        property int data: 0
    }
    Item {
        id: thing3
        property bool data: false 
    }
    
    Item {
        id: screenProperties
        property bool visible: false
    }

    FocusScope { 
        id: screen
        visible: screenProperties.visible
        focus: screenProperties.visible
        
        Rectangle {
            x:0; y:0; width: 400; height: 300
            color: "pink"
            Text {
                x: 10; y: 10
                text: "Hi there!"
            }
        }
    }

    Component.onCompleted: {
        component1.data = "new reactive data"
        Qt.callLater(Qt.quit)
    }
    
}