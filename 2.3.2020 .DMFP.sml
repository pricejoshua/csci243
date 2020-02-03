fun isEven(n) = n mod 2 = 0;

fun areEven([]) = [] |
areEven(x::rest) = isEven(x)::areEven(rest);