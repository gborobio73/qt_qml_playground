import QtQuick 2.14
import QtQuick.Controls 2.14

Item {
    signal homeButtonPressed()
    signal playButtonPressed()
    signal stopButtonPressed()

    Rectangle {
        x:0; y:0; width: 400; height: 50
        color: "green"

        Flow {
            spacing: 1
            Button {
                text: "Play"
                onClicked: {
                    playButtonPressed()
                }
            }
            Button {
                text: "Stop"
                onClicked: {
                    stopButtonPressed()
                }
            }
            Button {
                text: "Home"
                onClicked: {
                    homeButtonPressed()
                }
            }
        }
    }
}
