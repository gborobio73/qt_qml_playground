import QtQuick 2.14

Item {
    property TimeState state

    Pacio {
        onEventTriggered: {
            console.log(`onEventTriggered: ${message}`)
            console.log(`onEventTriggered: ${parent.state.time}`)
            // parent.state.updateState(message)
            parent.state.time = "<" + message
            // parent.state.time = Qt.binding(function() { return message })
            
        }
    }
}