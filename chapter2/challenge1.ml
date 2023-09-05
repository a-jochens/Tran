(* Calculating max in functional style *)

let rec maxi l = match l with
                 | [] -> 0
                 | hd :: tl -> let m = maxi tl in
                               if hd < m then m else hd;;

print_int (maxi [10; 2; 5]); print_endline "";
print_int (maxi [5; 10; 2]); print_endline "";
print_int (maxi [2; 5; 10]); print_endline ""
