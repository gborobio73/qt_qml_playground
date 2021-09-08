import QtQuick 2.0
import "./state.js" as MyState
import "./moduleState.mjs" as MyModuleState

Rectangle {
    id: redroot
    y: 220; x: 100; height: 100; width: 200
    color: "red"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            const state = MyState.inc()
            const moduleState = MyModuleState.inc()
            console.log(`red: state ${state}, module state ${moduleState}`)
        }
    }
}