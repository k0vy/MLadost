(* Exercise 3.4 Write a function nth(l, n) to return the nth element
of l (where the head is element 0). *)

(* Note, if n > length(l) then nth(l, n) returns the last element of l. *)
fun nth (x::[], _) = x
  | nth (x::xs, n) = if n > 0 
		     then nth (xs, n-1)
		     else x
  ;
