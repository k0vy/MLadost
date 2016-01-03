(* Exercise 3.9 Give an equivalent definition of zip that does not
depend upon the order in which patterns are considered. *)

fun
    zip ([], _)        = []
  | zip (_, [])        = []
  | zip (x::xs, y::ys) = (x, y)::zip(xs, ys)
  ;
