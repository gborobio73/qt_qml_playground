import QtQuick 2.14

// The dispatcher receives actions and dispatches them to stores that have registered with the dispatcher. 
// Every store will receive every action. There should be only one singleton dispatcher in each application.

Item {
    signal dispatch(var action)

    onDispatch: {
        var props = Object.keys(action).map((key)=> {
            return { key, value: action[key] }
        })   
        console.log(`Action dispatched with properties: ${JSON.stringify(props)}`)
    }
}