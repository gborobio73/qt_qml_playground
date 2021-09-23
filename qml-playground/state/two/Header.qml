import QtQuick 2.14

Rectangle {
    required property TimeState state
    property int headerHeight: 40
    property alias headerText: headerText
    
    y: 0; x: 0; height: headerHeight; width: parent.width
    color: "pink"

    Text {
        id: headerText
        objectName: "timeText"
        text: "time is: " + parent.state.time
        y: 10
    }
}

