(* Exercise 3.1 Write a version of maxl using null, hd and tl,
instead of pattern matching.*)

(* Definitions of null, hd and tl *)
fun null ([]) = true
  | null (_::_) = false;
fun hd (x::_) = x;
fun tl (_::xs) = xs;

fun maxl xs : int = if null (tl xs) 
		    then hd xs
		    else
			if hd xs > hd (tl xs)
			then maxl ((hd xs) :: tl (tl xs))
			else maxl ((hd (tl xs)) :: tl (tl xs));

(* "If you prefer this verion of <maxl>, you might as well give up ML
for Lisp... Normal people find pattern matching more readable than hd
and tl." *)
