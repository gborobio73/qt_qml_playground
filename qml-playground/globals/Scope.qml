import QtQuick 2.5

Item {
    id: a
    width: 640; height: 640
    Item {
        id: b
        Item {
            id: h
            Item {
                id: i
                function log(message) {
                    print(`[${new Date}][i]: ${message}`)
                }
            }
        }
    }
    Item {
        id: c
        Item {
            id: d
            Item {
                id: f
                Rectangle {
                    y: 100; x: 100; height: 100; width: 200
                    color: "pink"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            i.log("pink clicked")
                        }
                    }
                }
            }
            Item {
                id: g
            }
        }
        Item {
            id: e
        }
    }
}