import QtQuick 2.14

Item {

    required property ActionCreator actionCreator

    Timer { 
        id: timer
        running: true; repeat: true
        onTriggered: {
            actionCreator.decrement(3)
        }
    }

    Component.onCompleted: {
        timer.interval = 1500
    }
}