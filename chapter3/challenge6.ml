(* Filtered accumulation *)

let rec filtered_accumulate combiner init term p m n = 
    if m > n then init
    else combiner (let t = term m in
                   if p t then t else init) (filtered_accumulate combiner init term p (m + 1) n);;


Printf.printf "%u " (filtered_accumulate (+) 0 (fun x -> x) (fun x -> x mod 2 = 0) 0 100);;