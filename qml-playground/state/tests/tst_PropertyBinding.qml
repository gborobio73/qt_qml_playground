import QtQuick 2.15
import QtTest 1.2

TestCase {
    when: windowShown
    width: 300; height: 300

    Component {
        id: component
        Item {
            Item {
                id: state
                objectName: "stateText"
                property string text: "default text"
            }

            Rectangle {
                Text {
                    objectName: "rectangleAText"
                    text: "rectangle A: " + state.text
                }
            }

            Rectangle {
                Text {
                    objectName: "rectangleBText"
                    text: "rectangle B: " + state.text
                }
            }
        }
    }

    function test_text() {
        var obj = createTemporaryObject(component, parent)

        var stateText = findChild(obj, "stateText")
        stateText.text = "new text"
        
        var rectangleAText = findChild(obj, "rectangleAText")
        compare(rectangleAText.text, "rectangle A: new text")
        var rectangleBText = findChild(obj, "rectangleBText")
        compare(rectangleBText.text, "rectangle B: new text")
    }

    function benchmark_property_binding() {
        var obj = createTemporaryObject(component, parent)

        var stateText = findChild(obj, "stateText")
        stateText.text = "new text"
    }
}
