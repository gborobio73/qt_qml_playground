// .mjs ECMAScript modules
import { factorial } from "./factorial.mjs"

const showCalculations = (value) => {
    // console.log("kk", value)
    console.log(
        "Call factorial() from script.mjs:",
        factorial(value));
}

export { showCalculations }