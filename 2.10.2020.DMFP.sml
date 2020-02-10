(*3.13.4*)
fun hasDivisorOfAll(original) =
    let
        fun isDivisorOfAll(x, []) = true
          | isDivisorOfAll(x, y::yRest) = x mod y = 0 andalso isDivisorOfAll(x,
          yRest)
        fun hasDivisorOfAllHelper([]) = false
          | hasDivisorOfAllHelper(x::xRest) =
            isDivisorOfAll(x,original) orelse hasDivisorOfAllHelper(xRest)
    in
        hasDivisorOfAllHelper(original)
    end;

(*3.13.5*)
fun contains(x, []) = false |
  contains(x, a::rest) = if (x = a) then true else contains(x, rest);

fun hasCommonElement([], []) = false |
  hasCommonElement([], yy) = false |
  hasCommonElement(x::xRest, yy) = contains(x, yy) orelse
  hasCommonElement(xRest, yy);

