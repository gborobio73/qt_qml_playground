import QtQuick 2.14

Item {
    width: 300; height: 300

    ActionDispatcher {
        id: dispatcher
    }

    CounterActionCreator {
        id: actionCreator
        dispatcher: dispatcher
    }

    ExternalEvents {
        id: events
        actionCreator: actionCreator
    }

    CounterStore {
        id: counterStore
        dispatcher: dispatcher
    }
    
    CounterView {
        actionCreator: actionCreator
        store: counterStore
    }
}