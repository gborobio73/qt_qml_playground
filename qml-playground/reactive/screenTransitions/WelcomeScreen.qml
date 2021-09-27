import QtQuick 2.14

Screen { 
    state: screenTransitions.screens.welcomeScreenState
    // state: screenTransitions.welcomeScreenState

    Rectangle {
        x:0; y:0; width: 400; height: 300
        Text {
            x: 10; y: 10
            text: "Waiting for the door to be openned"
        }
    }
}