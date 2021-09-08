import QtQuick 2.5
import "../../qml"

Log {
    property bool logCalled: false

    function info(message) {
        print(`[MockLog][${new Date}]: ${message}`)
        logCalled= true
    }
}