import QtQuick 2.14

Rectangle {
    property TimeState state
    property int headerHeight: 40
    
    y: 0; x: 0; height: headerHeight; width: parent.width
    color: "pink"

    Text {
        text: "time is: " + parent.state.time
        y: 10
    }

    Component.onCompleted: { 
        console.log(`header: ${state.time}`)
    }

}

