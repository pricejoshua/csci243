(*2.4.14*)
fun addToEach(x, []) = [[]]|
addToEach(x, aa::rest) = [x]@aa::addToEach(x, rest); 

fun addToEach(x, []) = [[x]]|
addToEach(x, aa::rest) = [x]::aa::addToEach(x, rest);