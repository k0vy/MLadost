(* Exercise 3.2 Write a function to return the last element of a list
*)

fun lastl (x::[]) = x
  | lastl (_::xs) = lastl xs
  ;
