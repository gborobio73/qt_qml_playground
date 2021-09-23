// run: QML2_IMPORT_PATH=. qmlscene main.qml
import QtQuick 2.14

Item {
    width: 400; height: 300
    
    /*
    Pacio 
        propagates events through signals
    */
    Item {
        id: pacio
        signal flightOpened()
        signal flightClosed()
        signal flightDurationChanged(string duration)

        Timer { // emulates the Pacio server sending flight opened event
            id: flightOpenedTimer
            running: true; repeat: true
            onTriggered: {
                console.log(`flight openend!`)
                flightOpenedTimer.running = false
                flightDurationTimer.running = true
                parent.flightOpened()
            }
        }
        
        Timer { // emulates the Pacio server sending flight closed event
            id: flightClosedTimer
            running: true; repeat: true
            onTriggered: {
                console.log(`flight closed!`)
                flightClosedTimer.running = false
                flightDurationTimer.running = false
                parent.flightClosed()
            }
        }
        Timer { // emulates the Pacio server sending flight duration updates
            id: flightDurationTimer
            running: false; repeat: true
            onTriggered: {
                console.log(`flight duration changed!`)
                parent.flightDurationChanged(new Date())
            }
        }

        Component.onCompleted: { 
            flightOpenedTimer.interval = 3000
            flightClosedTimer.interval = 15000
            flightDurationTimer.interval = 2000
        }
    }

    /*
    PacioFlightDataModel 
        holds the flight info that it is sent by Pacio.
    */
    Item {
        id: pacioFlightDataModel
        property bool flightOpened: false
        property string flightDuration: "00:00"
        
        Connections {
            target: pacio
            function onFlightOpened() {
                pacioFlightDataModel.flightOpened = true
            }
            function onFlightClosed() {
                pacioFlightDataModel.flightOpened = false
            }
            function onFlightDurationChanged(duration) {
                pacioFlightDataModel.flightDuration = duration
            }
        }
    }

    /* 
    HomeScreen 
        Visible only when the flight is open. Has the flight duration info.
        It reacts to PacioFlightDataModel using property bindings
    */
    FocusScope { 
        id: homeScreen
        visible: pacioFlightDataModel.flightOpened
        focus: pacioFlightDataModel.flightOpened
        property string flightDuration: pacioFlightDataModel.flightDuration
        
        Rectangle {
            x:0; y:0; width: 400; height: 300
            color: "orange"
            Text {
                x: 10; y: 10
                text: "Flight is open \nTime to destination: " + homeScreen.flightDuration
            }
        }
    }

    /* 
    ClosedScreen 
        visible only when the flight is closed
        It reacts to PacioFlightDataModel using property bindings
    */
    FocusScope { 
        id: closedScreen
        visible: !pacioFlightDataModel.flightOpened
        focus: !pacioFlightDataModel.flightOpened

        Rectangle {
            x:0; y:0; width: 400; height: 300
            color: "pink"
            Text {
                x: 10; y: 10
                text: "Flight is closed"
            }
        }
    }
}