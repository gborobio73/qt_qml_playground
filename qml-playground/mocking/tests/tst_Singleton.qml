// run: /usr/local/opt/qt5/bin/qmltestrunner -input tst_Singleton.qml

import QtQuick 2.14
import QtTest 1.2

import "../qml"
import "./mocks"

TestCase {
    id: testSingleton
    name: "testSingleton"
    when: windowShown
    width: 300; height: 300
    
    property Singleton sing: TestableSingleton {}

    function test_click_yellow() {
        compare(sing.whatAmI(), 'singleton')
    }

}