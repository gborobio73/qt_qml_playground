import QtQuick 2.0
import "./state.js" as MyState
import "./moduleState.mjs" as MyModuleState

Rectangle {
    y: 100; x: 100; height: 100; width: 200
    color: "blue"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            const state = MyState.inc()
            const moduleState = MyModuleState.inc()
            console.log(`blu: state ${state}, module state ${moduleState}`)
            print("clicked")
        }
    }

    Component.onCompleted: { 
        print("blue square completed..")
    }
}