import QtQuick 2.14

Rectangle {
    required property TimeState state
    property int footerHeight: 40
    y: parent.height - footerHeight; x: 0; height: footerHeight; width: parent.width
    color: "orange"

    Text {
        text: "time is: " + parent.state.time
        y: parent.height - footerHeight +10
        // x: parent.width - 120
        x: 0
    }
}

