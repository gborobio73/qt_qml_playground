// tst_Children.qml

import QtQuick 2.14
import QtTest 1.2
import ".."

/**
    This test shows how to access child components to make assertions.
    Given this component hierarchy with property bindings on everyu child
    ┌──Item──────────────────────┐
    |   text                     |   
    │   ┌──Rectangle─────────┐   │
    │   │   ┌──Text──────┐   │   │
    │   │   │            │   │   │  
    │   │   └────────────┘   │   │
    │   └────────────────────┘   │
    └────────────────────────────┘
    We will update the root text (Item) and assert on the last child (Text)
**/

TestCase {
    id: testChildren
    name: "TestChildren"
    when: windowShown
    width: 300; height: 300

    
    Component { // this Component is just a wrapper so we can use createTemporaryObject
        id: component

        Item {
            y: 0; x: 0; height: parent.height; width: parent.width
            property string text: "default"
            
            Rectangle { 
                objectName: "anotherRectangle"
                property string text: "something else"
            }

            Rectangle { 
                y: 0; x: 0; height: parent.height; width: parent.width
                color: "pink"
                property string text: parent.text
                objectName: "theRectangle"

                Text {
                    objectName: "theText"
                    text: parent.text
                }
            }    

            function updateText(txt) {
                text = txt
            }
        }
    }
    
    function test_text() {
        var item = createTemporaryObject(component, parent)
        waitForRendering(item)
        var rectangle = findChild(item, "theRectangle") // var rectangle = item.children[1]
        verify(rectangle.color == "#ffc0cb") // that's pink
        var text = findChild(rectangle, "theText") // var text = rectangle.children[0]
        verify(text.text === "default")
        
        item.updateText("new text")
        
        compare(text.text, "new text")
    }
}
