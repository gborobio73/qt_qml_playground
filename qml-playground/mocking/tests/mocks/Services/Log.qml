import QtQuick 2.5

Item {
    id: rootLog
    function info(message) {
        print(`${rootLog} I'm a mock!!`)
    }
}