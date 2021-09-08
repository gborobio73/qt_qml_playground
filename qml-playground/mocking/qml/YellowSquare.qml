import QtQuick 2.5

Rectangle {
    property int padding: 20
    y: padding; x: padding; height: parent.height - padding * 2; width: parent.width - padding * 2
    color: "yellow"
    
    property Log log: Log {}

    MouseArea {
        anchors.fill: parent
        onClicked: {
            log.info("yellow clicked")
        }
    }
}

