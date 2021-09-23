import QtQuick 2.14
import QtTest 1.2
import "bindings"

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
        
        item.updateText("new text")

        var text = item.children[1].children[0]
        compare(text.text, "new text")

        var rectangle = findChild(item, "myRectangle")
        text = findChild(rectangle, "text")
        compare(text.text, "new text");
        wait(1000)
    }
}
