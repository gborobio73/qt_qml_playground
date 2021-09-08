import QtQuick 2.5

Item {
    function info(message) {
        print(`[Log][${new Date}]: ${message}`)
    }
}