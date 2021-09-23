import QtQuick 2.14

Item {
    y: 0; x: 0; height: parent.height; width: parent.width
    property string text: "default"

    MyRectangle { 
        objectName: "anotherRectangle"
        text: "kk"
    }
    
    MyRectangle { 
        objectName: "myRectangle"
        text: parent.text
    }    

    function updateText(txt) {
        text = txt
    }
}