/*
* run these tests:
* /usr/local/opt/qt5/bin/qmltestrunner -input tst_tutorial2.qml
**/

import QtQuick 2.0
import QtTest 1.2
import "."

TestCase {
    name: "Test"
    when: windowShown

    Main {
        id: myMain
    }
    
    function test_click_blue() {
        // waitForRendering(myRoot)
        console.log(myMain)
        console.log('about to click')
        mouseClick(myMain)
        console.log(`count: ${myMain.count}`)
        console.log('about to click again')
        mouseClick(myMain)
        console.log(`count: ${myMain.count}`)
        sleep(5000)
    }
}
