import QtQuick 2.14

Item {
    signal timeUpdated(string time)

    Pacio {
        onEventTriggered: {
            console.log(`onEventTriggered: ${message}`)
            timeUpdated(message)            
        }
    }
}