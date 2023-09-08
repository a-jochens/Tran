(* Check an ascending list *)

let rec zip_with f l1 l2 =
    match l1, l2 with
    | [], _ -> []
    | _, [] -> []
    | x :: xs, y :: ys -> f x y :: zip_with f xs ys;;


let is_ascending l = 
    List.fold_left (&&) true (zip_with (<=) l (List.tl l));;


let print_boole b = print_endline (string_of_bool b);;

print_boole (is_ascending [1; 2; 3]);;
print_boole (is_ascending [1; 1; 2]);;
print_boole (is_ascending [3; 1; 2]);;
