import QtQuick 2.14

Item {
    signal dispatch(var action)

    onDispatch: {
        console.log(`action dispatched ${action.type} ${action.qtty}`)
    }
}