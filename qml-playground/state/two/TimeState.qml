import QtQuick 2.14

Item {
    property string time: "the time"

    Connections {
        target: pacio
        function onEventTriggered(message) {
            time = message
        }
    }
}