import QtQuick 2.14
import "./state.js" as MyState

Item {
    y: 0; x: 0; height: parent.height; width: parent.width

    MyRectangle { 
    }    

    function updateText(txt) {
        MyState.setText(txt)
    }
}