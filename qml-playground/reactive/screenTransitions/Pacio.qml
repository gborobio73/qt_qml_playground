import QtQuick 2.14

Item {
    signal flightClosed()

    Timer { // emulates the Pacio server sending flight closed event after some time
        id: timer
        running: true; repeat: true
        onTriggered: {
            console.log(`flight closed!`)
            timer.running = false
            flightClosed()
        }
    }

    Component.onCompleted: {
        timer.interval = 20000
    }
}