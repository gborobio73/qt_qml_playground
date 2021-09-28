import QtQuick 2.14

Item {
    width: 300; height: 300

    ActionDispatcher {
        id: dispatcher
    }

    ActionCreator {
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

    ClickCountStore {
        id: clickCountStore
        dispatcher: dispatcher
    }
    
    View {
        actionCreator: actionCreator
        counterStore: counterStore
        clickCountStore: clickCountStore
    }
}