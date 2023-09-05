(* Quick Fibonacci *)


(* Version with full list of previous numbers 
let rec memo_fib known_fibs n = 
  let k = List.length known_fibs in
  if n < k then (List.nth known_fibs (k - n)) else
  let next_fib = List.hd known_fibs + List.hd (List.tl known_fibs) in
  memo_fib (next_fib :: known_fibs) n;;  

let super_fib = memo_fib [1; 1];;
*)


(* Keeping track of the previous two numbers only *)

let rec memo_fib last before_last counter n = 
  if counter > n then last else
  memo_fib (last + before_last) last (counter + 1) n;;  

let super_fib = memo_fib 1 1 3;;

Printf.printf "%u " (super_fib 60);;


(* Using standard functions *)


