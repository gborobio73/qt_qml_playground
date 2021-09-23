import QtQuick 2.14
import QtQuick.Controls 2.14

Item {
    signal mediaButtonPressed()
    signal quitButtonPressed()
    Rectangle {
        x:0; y:0; width: 400; height: 50
        color: "orange"
        border.color: "black"
        border.width: 1
        Flow {
            spacing: 1
            Button {
                text: "Media"
                onClicked: {
                    mediaButtonPressed()
                }
            }
            Button {
                text: "Quit"
                onClicked: {
                    quitButtonPressed()
                }
            }
        }
        
    }
}
