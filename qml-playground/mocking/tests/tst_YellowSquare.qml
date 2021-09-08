// run: /usr/local/opt/qt5/bin/qmltestrunner -input tst_YellowSquare.qml

import QtQuick 2.14
import QtTest 1.2

import "../qml"
import "./mocks"

TestCase {
    id: testYellowSquare
    name: "testYellowSquare"
    when: windowShown
    width: 300; height: 300
    
    property Log mockLog: MockLog {}

    Component {
        id: component
        YellowSquare {
            log: mockLog
        }
    }

    function test_click_yellow() {
        var obj = createTemporaryObject(component, parent)
        waitForRendering(obj)
        for(var i = 0; i < 5; i++) {
            mouseClick(obj)
            wait(500)
        }
    }

    function test_log_is_called() {
        var obj = createTemporaryObject(component, parent)
        waitForRendering(obj)
        mouseClick(obj)
        compare(mockLog.logCalled, true)
    }
}