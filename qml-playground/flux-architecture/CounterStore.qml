import QtQuick 2.14

Item {
    required property ActionDispatcher dispatcher

    property int value: 0

    Connections {
        target: dispatcher
        function onDispatch(action) {
            switch(action.type) {
                case 'INC':{  
                    value = value + action.qtty
                    break
                }
                case 'DEC':{  
                    if (value - action.qtty >= 0) {
                        value = value - action.qtty
                    }
                    break
                }
            }
        }
    }

    property Database database: Database {}

    Component.onCompleted: {
        value = database.getCounterState()
    }
}
