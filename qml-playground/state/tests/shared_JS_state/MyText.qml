import QtQuick 2.14
import "./state.js" as MyState

Text {
    // property string theText: MyState.getText()
    text: Qt.binding(function() { return MyState.getText() })
}
