(* Exercise 3.11 Write a function to express integers as Roman
numerals. Supplied with suitable arguments, your function should be
able to express 1984 as either MDCCCCLXXXIIII or MCMLXXXIV. *)

val rnvals1 = [(1000, "M"), (500, "D"), (100, "C"), (50, "L"), (10, "X"), (5, "V"), (1, "I")]
and rnvals2 = [(1000, "M"), (900, "CM"), (500, "D"), (100, "C"), (50, "L"), (10, "X"), (5, "V"), (4, "IV"), (1, "I")];

fun romnum (rnvals, 0)          = []
  | romnum ((v, rn)::rnvals, n) = if n < v then romnum (rnvals, n)
				  else rn :: romnum ((v, rn)::rnvals, n-v)
;
