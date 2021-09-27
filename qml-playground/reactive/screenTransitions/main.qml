import QtQuick 2.14

Item {
    width: 400; height: 300
    
    NavigationSignals {
        id: navigationSignals
    }

    ScreenTransitions {
        id: screenTransitions
    }

    ExternalEvents {
        id: externalEvents
    }

    WelcomeScreen {
    }

    HomeScreen {
    }

    MediaScreen {
    }

    DoorClosedScreen {
    } 
    
    Component.onCompleted: {
    }
    
}