import QtQuick 2.14

Item {
    required property QtObject state

    Pacio {
        onEventTriggered: {
            console.log(`onEventTriggered: ${message}`)
            parent.state.updateState(message)
        }
    }
}