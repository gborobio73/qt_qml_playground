// run: /usr/local/opt/qt5/bin/qmltestrunner -input tst_Main.qml -import ./mocks

import QtQuick 2.14
import QtTest 1.2

import "../qml"

TestCase {
    id: testYellowSquare
    name: "testYellowSquare"
    when: windowShown
    width: 300; height: 300
    
    Component {
        id: component
        Main {}
    }

    function test_click_yellow() {
        var obj = createTemporaryObject(component, parent)
        waitForRendering(obj)
        for(var i = 0; i < 5; i++) {
            mouseClick(obj)
            wait(500)
        }

    }
}