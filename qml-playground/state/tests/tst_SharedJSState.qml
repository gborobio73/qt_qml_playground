import QtQuick 2.14
import QtTest 1.2
import "shared_JS_state"
import "./shared_JS_state/state.js" as MyState

TestCase {
    id: testBindings
    name: "TestBindings"
    when: windowShown
    width: 300; height: 300

    
    Component { 
        id: component
        MyComponent {}
    }
    
    function test_text() {
        var item = createTemporaryObject(component, parent)
        waitForRendering(item)
        wait(500)
        
        console.log('setting text')
        item.updateText("new text")
        MyState.text = 'kk de la baka'
        console.log(MyState.text)

        var text = item.children[0].children[0]
        wait(1000)
        compare(text.text, "new text")
    }
}
