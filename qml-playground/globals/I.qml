import QtQuick 2.5

Item {
    id: i
    function log(message) {
        print(`[${new Date}]: ${message}`)
    }
}