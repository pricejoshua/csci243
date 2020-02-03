fun makeInterrogative(Sentence(subj, Predicate(adv, TVP(v, dObj)), prPh)) =
    let val (v1, v2) = interrogativeT(v)
    in
      "why " ^ v1 ^ " " ^ printNounPhrase(subj) ^ " " ^ v2 
      ^ " " ^ printNounPhrase(dObj) ^
      printAdverb(adv) ^ printPrepPhrase(prPh) ^ "?"
    end
  | makeInterrogative(Sentence(subj, Predicate(adv, IVP(v)), prPh)) =
    let val (v1, v2) = interrogativeI(v)
    in
      "why " ^ v1 ^ " " ^ printNounPhrase(subj) ^ " " ^ v2 ^
      printAdverb(adv) ^p rintPrepPhrase(prPh) ^ "?"
    end
  | makeInterrogative(Sentence(subj, Predicate(adv, LVP(v, Adj(a))), prPh)) =
    let val (v1, v2) = interrogativeL(v)
    in
      "why " ^ v1 ^ " " ^ printNounPhrase(subj) ^ " " ^ v2 ^
      printAdverb(adv) ^
       " " ^ a ^
      printPrepPhrase(prPh) ^ "?"
     end;