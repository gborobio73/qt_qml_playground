/**
 * looks like ES6 modules are always imported as a shared resources => state is shared across QML documents that import them
 */

var moduleState = 0

function inc () {
    moduleState ++
    return moduleState
}

export { inc }