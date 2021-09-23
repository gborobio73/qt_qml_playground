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
                signal textUpdated(string text)
            }

            Rectangle {
                Text {
                    id: rectangleAText
                    objectName: "rectangleAText"
                    Connections {
                        target: state
                        function onTextUpdated(txt) {
                            rectangleAText.text = "rectangle A: " + txt
                        }
                    }
                }
            }

            Rectangle {
                Text {
                    id: rectangleBText
                    objectName: "rectangleBText"
                    Connections {
                        target: state
                        function onTextUpdated(txt) {
                            rectangleBText.text = "rectangle B: " + txt
                        }
                    }
                }
            }
        }
    }
    
    function test_text() {
        var obj = createTemporaryObject(component, parent)

        var stateText = findChild(obj, "stateText")
        stateText.textUpdated("super new text")
        
        var rectangleAText = findChild(obj, "rectangleAText")
        compare(rectangleAText.text, "rectangle A: super new text")
        var rectangleBText = findChild(obj, "rectangleBText")
        compare(rectangleBText.text, "rectangle B: super new text")
    }

    function benchmark_signal_propagation() {
        var obj = createTemporaryObject(component, parent)

        var stateText = findChild(obj, "stateText")
        stateText.textUpdated("super new text")
    }
}
