import QtQuick 2.5

Item {
    id: singletonRoot

    function whatAmI(message) {
        return 'singleton'
    }
}