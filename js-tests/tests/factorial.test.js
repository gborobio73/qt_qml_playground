
import { factorial } from "../src/factorial.js";

test('factorial of 5', () => {
    expect(factorial(5)).toBe(120);
});