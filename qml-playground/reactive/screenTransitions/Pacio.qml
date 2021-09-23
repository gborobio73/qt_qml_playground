import QtQuick 2.14

Item {
    signal flightOpenned()
    signal flightClosed()

    Timer { // emulates the Pacio server sending flight openned event after some time    
        id: timerFlightOpenned
        running: true; repeat: true
        onTriggered: {
            console.log(`flight openned!`)
            timerFlightOpenned.running = false
            flightOpenned()
        }
    }

    Timer { // emulates the Pacio server sending flight closed event after some time
        id: timerFlightClosed
        running: true; repeat: true
        onTriggered: {
            console.log(`flight closed!`)
            timerFlightClosed.running = false
            flightClosed()
        }
    }

    Component.onCompleted: {
        timerFlightOpenned.interval = 5000
        timerFlightClosed.interval = 20000
    }
}