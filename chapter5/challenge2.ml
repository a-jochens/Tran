(* fold_left *)

let rec fold_left f init l =
    match l with
    | [] -> init
    | hd :: tl -> fold_left f (f init hd) tl;;


print_endline (string_of_int (fold_left (-) 0 [1]));;
print_endline (string_of_int (fold_left (-) 0 [1; 2; 3]));;
