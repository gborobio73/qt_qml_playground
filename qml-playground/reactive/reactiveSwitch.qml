import QtQuick 2.14

Item {
    width: 400; height: 300
    
    Item {
        id: component1
        property bool theProp: false
        signal isOn()
        signal isOff()

        onThePropChanged: {
            theProp ? isOn() : isOff()
        }

        Timer { 
            id: timer
            running: true; repeat: true
            onTriggered: {
                parent.theProp = !parent.theProp
            }
        }

        Component.onCompleted: {
            timer.interval = 1000
        }
        
    }

    Item {
        id: component2
        Connections {
            target: component1
            function onIsOn() {
                console.log(`It's ON`)
            }

            function onIsOff() {
                console.log(`It's OFF`)
            }
        }
    }
    
}