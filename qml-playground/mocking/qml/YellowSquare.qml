import QtQuick 2.5
import Services 1.0

Rectangle {
    property int padding: 20
    y: padding; x: padding; height: parent.height - padding * 2; width: parent.width - padding * 2
    color: "yellow"
    
    property Log myLog: Log {} //Log is defined in Services
    
    MouseArea {
        anchors.fill: parent
        onClicked: {
            myLog.info("yellow clicked")
        }
    }
}

