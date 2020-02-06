(*3.7.7*)
fun intersection([], bb) = [] |
intersection(a::rest, bb) = if contains(a,bb) then a::intersection(rest, bb) else intersection(rest, bb);

(*3.7.8*)
fun difference([], bb) = [] |
difference(a::rest, bb) = if contains(a,bb) then difference(rest, bb) else a::difference(rest, bb);

(*3.7.9*)
fun makeNoRepeats([]) = [] |
makeNoRepeats(a::rest) = if contains(a, rest) then makeNoRepeats(rest) else a::makeNoRepeats(rest);

(*3.7.12*)
fun listMin([x]) = x |
listMin(a::rest) = if a < listMin(rest) then a else listMin(rest);

(*3.7.13)
fun sort([]) = [] |
sort(a::rest) = if listMin(a::rest) = a then a::sort(rest)
else sort((listMin(rest))::removeFirst(listMin(rest), a::rest));