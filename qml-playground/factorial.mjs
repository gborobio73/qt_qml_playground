const factorial = (value) => {
    const a = parseInt(value);
    if (a <= 0)
        return 1;
    else
        return a * factorial(a - 1);
}

export { factorial }