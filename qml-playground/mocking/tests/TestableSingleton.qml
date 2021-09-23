import QtQuick 2.5
import "../qml"

Singleton {
    property int count: 0

    function whatAmI(message) {
        count ++
        return singletonRoot.whatAmI()
    }
    function getCount(message) {
        return count
    }
}