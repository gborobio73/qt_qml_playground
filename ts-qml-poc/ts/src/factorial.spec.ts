import { factorial } from "./factorial";

test("factorial of 5", () => {
  expect(factorial(5)).toBe(120);
});
