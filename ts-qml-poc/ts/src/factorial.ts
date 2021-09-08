const factorial = (value: number): number => {
  let res = 1;
  if (value <= 0) return res;
  else return value * factorial(value - 1);
};

export { factorial };
