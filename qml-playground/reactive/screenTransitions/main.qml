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

    FlightClosedScreen {
        id: flightClosedScreen
    } 

    Pacio {
        id: pacio
    }

    Component.onCompleted: {
    }
    
}