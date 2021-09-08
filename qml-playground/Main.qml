import QtQuick 2.0

Rectangle {
    width: 320; height: 480
    color: "lightgray"
    property int count: 27
    // property alias blue: blue

    // Text {
    //     id: helloText
    //     text: "Hello world!"
    //     y: 30
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     font.pointSize: 24; font.bold: true   
    // }

    // BlueSquare {
    //     id: blue
    // }

    // RedSquare {
    //     id: red
    // }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.debug('debugged')
            print("clicked main")
            count++
            print(count)
        }
    }
    
    Component.onCompleted: { 
        print("completed..")
    }
    
}