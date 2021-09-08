import QtQuick 2.0

Item {
    width: 640; height: 640

    QtObject {
        id: attributes
        signal message(string data)
        property string name
        property int size
        property variant attributes
    }

    Text { text: attributes.name }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            attributes.name = attributes.name + " - name \n"    
            attributes.message(`clicked ${new Date()}`)
        }
    }

    RedSquare {
        Connections {
            target: attributes
            function onMessage(message) { 
                print(message)
            }
        }
    }

    Component.onCompleted: {
        attributes.name = " - name \n"    
    }
}