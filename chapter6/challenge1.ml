(* Area of the largest circle *)

type shape = Circle of float
           | Rectangle of float * float;;

let rec area s = match s with
                 | Circle r -> 3.14 *. r *. r
                 | Rectangle (w, h) -> w *. h;;


let is_circle s = match s with
                  | Circle r -> true
                  | Rectangle (w, h) -> false;;


let max_circle l = l |> List.filter is_circle |> List.map area |> List.fold_left max 0.;; 


let print_float x = print_endline (string_of_float x);;

print_float (max_circle []);;
print_float (max_circle [Circle 1.; Rectangle (1., 2.); Circle 2.; Rectangle (2., 3.)]);;
