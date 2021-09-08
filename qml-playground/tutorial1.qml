import QtQuick 2.0
// import "stuff.js" as Stuff
import "./script.mjs" as MyScript

Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"

    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true   
    }

    function changeColor(rectangle) {
        console.log(rectangle.color)
        if (rectangle.color == "#ff0000") {
            rectangle.color = "#0000ff"
            return
        }
        rectangle.color = "#ff0000"
    }

    function change(color) { // arrow functions ok
        if (color == "#ff0000") {
            return "#0000ff"
        }
        return "#ff0000"
    }

    Rectangle {
        id: rectangle
        y: 100; x: 100; height: 100; width: 200
        color: "blue"
        // MouseArea {
        //     id: mousearea
        //     anchors.fill: parent
        //     // onClicked: {
        //     //     rectangle.color = change(rectangle.color)
        //     // }
        //     onClicked: {
        //         MyScript.showCalculations(10)
        //         console.log("Call factorial() from QML:",
        //             MyScript.factorial(10))
        //     }
        // }
         MouseArea {
            anchors.fill: parent
            onClicked: {
                MyScript.showCalculations(10)
                // console.log("Call factorial() from QML:",
                //     MyScript.factorial(10))
            }
        }
    }

    // Timer {
    //     id: timer
    //     // interval: 1000
    //     running: true
    //     repeat: true
    //     onTriggered: {
    //         console.log(rectangle.color)
    //         const change = (color) => {
    //             if (color == "#ff0000") {
    //                 return "#0000ff"
    //             }
    //             return "#ff0000"
    //         }
    //         rectangle.color = change(rectangle.color)
    //         MyScript.showCalculations(10)
    //     }
    // }
    
    Component.onCompleted: { 
        print("completed..")
        // timer.interval = 1000
    }
    
}