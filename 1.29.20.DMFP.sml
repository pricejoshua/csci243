fun cat([], xx) = xx |
cat(a::rest, xx) = a::cat(rest,xx);

fun flatlist([]) = [] |
flatlist(a::rest) = a@flatlist(rest);

fun tuplify([], []) = [] | 
tuplify([], a::aRest) = (0, a)::tuplify([], aRest) |
tuplify(a::aRest, []) = (a, 0)::tuplify(aRest, []) |
tuplify(a::aRest, b::bRest) = (a,b)::tuplify(aRest, bRest);



fun sumPairLeft([]) = 0 |
sumPairLeft(a::rest) = #1(a) + sumPairLeft(rest);

fun sumPairRight([]) = 0 |
sumPairRight(a::rest) = #2(a) + sumPairRight(rest);

fun sumPairList([]) = (0,0)|
sumPairList(xx) = (sumPairListLeft(xx), sumPairListRight(xx));


fun addPairs((x1, y1),(x2, y2)) = (x1 + x2, y1 + y2);

fun sumPairList([]) = (0,0) |
sumPairList((a,b)::rest) = addPairs((a,b), sumPairList(rest));

