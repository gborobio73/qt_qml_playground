import QtQuick 2.14

Item {
    signal doorOpenned()
    signal doorClosed()

    Timer { 
        id: timerDoorOpenned
        running: true; repeat: true
        onTriggered: {
            console.log(`door openned!`)
            timerDoorOpenned.running = false
            doorOpenned()
        }
    }

    Timer { 
        id: timerDoorClosed
        running: true; repeat: true
        onTriggered: {
            console.log(`door closed!`)
            timerDoorClosed.running = false
            doorClosed()
        }
    }

    Component.onCompleted: {
        timerDoorOpenned.interval = 5000
        timerDoorClosed.interval = 20000
    }
}