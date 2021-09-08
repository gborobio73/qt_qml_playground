import QtQuick 2.5

Rectangle {
    y: 100; x: 100; height: 100; width: 200
    color: "pink"

    property Log myLog: Log {}
    MouseArea {
        anchors.fill: parent
        onClicked: {
            myLog.info("pink clicked")
        }
    }
}