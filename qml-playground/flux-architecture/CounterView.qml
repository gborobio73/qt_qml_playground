import QtQuick 2.14
import QtQuick.Controls 2.14

Rectangle {
    color: "orange"
    anchors.fill: parent

    required property CounterActionCreator actionCreator
    required property CounterStore store

    property int counterValue: store.value // property binding to the store
    onCounterValueChanged: { // this will be triggered when the store is updated
        myModel.append({ type: "counter", value: counterValue })
    }    
    
    Flow {
        spacing: 1
        Button {
            text: "inc"
            onClicked: {
                actionCreator.increment(1)
            }
        }
        Button {
            text: "dec"
            onClicked: {
                actionCreator.decrement(1)
            }
        }
    }
    
    ListModel {
        id: myModel
    }

    Component {
        id: myDelegate
        Text { text: type + ": " + value }
    }

    Rectangle {
        color: "pink"
        x:0; y: parent.y+50; width: parent.width; height: parent.height - 50
        ListView {
            anchors.fill: parent
            model: myModel
            delegate: myDelegate
        }
    }
}