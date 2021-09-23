import QtQuick 2.14

Item {

    signal eventTriggered(string message)

    Timer {
        id: timer
        running: true
        repeat: true
        onTriggered: {
            var msg = new Date()
            eventTriggered(msg)
        }
    }

    Component.onCompleted: { 
        timer.interval = 1000
    }
}