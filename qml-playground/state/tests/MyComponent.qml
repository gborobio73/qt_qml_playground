import QtQuick 2.14

Item {
    property string text: "default"
    y: 0; x: 0; height: parent.height; width: parent.width
    
    Rectangle {
        y: 0; x: 0; height: parent.height; width: parent.width
        color: "pink"
        property string text: parent.text

        Text {
            text: parent.text
        }
    }    

    function updateText(txt) {
        text = txt
    }
}