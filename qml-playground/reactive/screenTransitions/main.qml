import QtQuick 2.14

Item {
    width: 400; height: 300
    
    ScreenTransitions {
        id: screenTransitions
    }

    HomeScreen {
        id: homeScreen
    }

    MediaScreen {
        id: mediaScreen
    }

    DoorClosedScreen {
        id: doorClosedScreen
    } 

    ExternalEvents {
        id: pacio
    }

    Component.onCompleted: {
    }
    
}