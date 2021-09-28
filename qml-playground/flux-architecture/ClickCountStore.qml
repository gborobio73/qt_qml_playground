import QtQuick 2.14

Item {
    required property ActionDispatcher dispatcher

    property int value: 0

    Connections {
        target: dispatcher
        function onDispatch(action) {
            switch(action.type) {
                case 'CLICK':{  
                    value ++
                    break
                }
            }
        }
    }
}
