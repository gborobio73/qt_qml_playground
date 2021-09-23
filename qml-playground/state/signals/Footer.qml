import QtQuick 2.14

Rectangle {
    property int footerHeight: 40
    y: parent.height - footerHeight; x: 0; height: footerHeight; width: parent.width
    color: "orange"

    required property QtObject eventHandler
    property string time: "default footer time"

    Connections {
        target: eventHandler
        function onTimeUpdated(message) {
            console.log(`footer received time`)
            time = message
        }
    }

    Text {
        text: "time is: " + parent.time
        y: parent.height - footerHeight +10
        // x: parent.width - 120
        x: 0
    }
}

