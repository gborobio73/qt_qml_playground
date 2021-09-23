import QtQuick 2.14

Rectangle { 
    y: 20; x: 20; height: parent.height - 40; width: parent.width - 40
    color: "pink"
    required property string text

    MyText {
        objectName: "text"
        theText: parent.text
    }
}   