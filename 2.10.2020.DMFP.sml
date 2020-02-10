(*3.13.4*)
fun findSmallest([]) = 0 |
  findSmallest(a::rest) = if a < findSmallest(rest) then a else
    findSmallest(rest);

fun allDivide(x, []) = true |
  allDivide(x, a::rest) = x mod a = 0 andalso allDivide(x,rest);

fun hasDivisorOfAll([]) = true |
 hasDivisorOfAll(xx) = allDivide(findSmallest(xx), xx);


(*3.13.5*)
fun contains(x, []) = false |
  contains(x, a::rest) = if (x = a) then true else contains(x, rest);

fun hasCommonElement([], []) = false |
  hasCommonElement([], yy) = false |
  hasCommonElement(x::xRest, yy) = contains(x, yy) orelse
  hasCommonElement(xRest, yy);

