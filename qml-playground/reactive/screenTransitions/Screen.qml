import QtQuick 2.14

FocusScope {
    id: screen
    
    ScreenStates {
        id: screenStates
    }

    states: [
        State {
            name: screenStates.show
            PropertyChanges {
                target: screen
                visible: true
                focus: true
            }
        },
        State {
            name: screenStates.hide
            PropertyChanges {
                target: screen
                visible: false
                focus: false
            }
        }
    ]
}