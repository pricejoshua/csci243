(*3.3.5*)
fun isEven(n) = n mod 2 = 0;

fun areEven([]) = [] |
areEven(x::rest) = isEven(x)::areEven(rest);

(*3.3.6*)
fun containsOne([]) = false |
containsOne(x::rest) = (x = 1) orelse containsOne(rest);