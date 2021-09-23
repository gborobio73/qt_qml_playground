import QtQuick 2.14

Item {
    property string time: "the time"

    // only component that stores the state can make the assignment, otherwise breaks bindings
    // function updateState(message) {
    //     time = message
    // }
    
}