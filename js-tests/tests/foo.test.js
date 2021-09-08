import { sum } from "../src/sum.js"

describe('Sum', () => {
    it('Should sum', () => {
        const result = sum(3, 4);
        expect(result).toBe(7);
    });
});