import QtQuick 2.14

Rectangle {
    property int headerHeight: 40
    y: 0; x: 0; height: headerHeight; width: parent.width
    color: "pink"

    required property QtObject eventHandler
    property string time: "default header time"

    Connections {
        target: eventHandler
        function onTimeUpdated(message) {
            console.log(`header received time`)
            time = message
        }
    }

    Text {
        text: "time is: " + parent.time
        y: 10
    }
}

