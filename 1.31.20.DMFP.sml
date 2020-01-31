(*2.4.14*)
fun addToEach(x, []) = [] | addToEach(a,b::rest) = [a::b]@addToEach(a,rest);

addToEach(1, [[4,5],[7,8]]);

(*2.4.15*)
fun powerset([]) = [[]] | powerset(a::rest) = addToEach(a, powerset(rest))@powerset(rest);




(*2.B*)
fun imperativeT(TV("chased")) = "chase"|
imperativeT(TV("saw")) = "see"|
imperativeT(TV("greeted")) = "greet" |
imperativeT(TV("bit")) = "bite" |
imperativeT(TV("loved")) = "love";

fun imperativeI(IV("ran")) = "run"|
imperativeI(IV("slept")) = "sleep"|
imperativeI(IV("sang")) = "sing";

fun imperativeL(LV("was")) = "be"|
imperativeL(LV("felt")) = "feel"|
imperativeL(LV("seemed")) = "seem";

fun printVocative(NounPhrase(art, adj, Noun(n))) =
     "o " ^ (case adj of SOME(Adj(aa)) => aa  ^ " " | NONE => "") ^ n;

fun makeImperative(Sentence(subj, Predicate(adv, TVP(v, dObj)), prPh)) =
    let val v1 = imperativeT(v)
    in
        v1 ^ " " ^ printNounPhrase(dObj) ^ " " ^ printAdverb(adv) ^ " ," ^ 
        printPrepPhrase(prPh) ^ " " ^ printVocative(subj) ^ "!"
    end
  | makeImperative(Sentence(subj, Predicate(adv, IVP(v)), prPh)) =
    let val v1 = imperativeI(v)
    in
        v1 ^ " " ^ printAdverb(adv) ^ " ," ^ 
        printPrepPhrase(prPh) ^ " " ^ printVocative(subj) ^ "!"
    end
  | makeImperative(Sentence(subj, Predicate(adv, LVP(v, Adj(a))), prPh)) =
    let val v1 = imperativeL(v)
    in
        v1 ^ " " ^ a ^ printAdverb(adv) ^ " ," ^ 
        printPrepPhrase(prPh) ^ " " ^ printVocative(subj) ^ "!"
    end;