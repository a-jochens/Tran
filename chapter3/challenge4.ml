(* Apply a function twice *)

let twice f x = f (f x);;


let inc = (+) 1;;

Printf.printf "%u " (twice inc 2);;