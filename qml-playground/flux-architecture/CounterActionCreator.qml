import QtQuick 2.14

Item {
    required property ActionDispatcher dispatcher

    function increment(inc) {
        var action = {
            type: 'INC',
            qtty: inc,
        }
        dispatcher.dispatch(action)
    }

    function decrement(inc) {
        var action = {
            type: 'DEC',
            qtty: inc,
        }
        dispatcher.dispatch(action)
    }
}