import QtQuick 2.0
// import "./js/index.js" as IndexJS
import "./js/kk.js" as IndexJS

Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"

    Text {
        id: helloText
        text: "Hello world: " + IndexJS.factorial(5)
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true   
    }

    Timer {
        id: timer
        running: true
        repeat: true
        onTriggered: {
            IndexJS.showCalculations(10)
        }
    }
    
    Component.onCompleted: { 
        print("completed..")
        timer.interval = 1000
    }
    
}