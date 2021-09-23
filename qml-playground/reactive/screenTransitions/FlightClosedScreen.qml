import QtQuick 2.14

FocusScope { 
    visible: screenTransitions.flightClosedVisible
    focus: screenTransitions.flightClosedVisible

    Rectangle {
        x:0; y:0; width: 400; height: 300
        color: "pink"
        Text {
            x: 10; y: 10
            text: "Flight is closed"
        }
    }
}