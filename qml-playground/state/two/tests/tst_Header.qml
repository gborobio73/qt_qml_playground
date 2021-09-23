import QtQuick 2.14
import QtTest 1.2
import ".."

TestCase {
    id: testHeader
    name: "TestHeader"
    when: windowShown
    
    MockPacio {
        id: pacio
    }
    TimeState {
        id: timeState
    }
    Component {
        id: header
        Header {
            state: timeState
        }
    }
    
    function test_text() {
        var obj = createTemporaryObject(header, parent)
        waitForRendering(obj)
        
        var time = new Date()
        pacio.eventTriggered(time)
        
        var timeObj = findChild(obj, "timeText")
        compare(obj.children[0].text, `time is: ${time}`)   
    }
}
