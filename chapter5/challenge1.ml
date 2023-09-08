(* map on either type *)

type ('a, 'b) either = Left of 'a | Right of 'b;;


let map_either f e = match e with
                     | Left a -> Left a
                     | Right b -> Right (f b);;


let print_either e = match e with
                     | Left a -> print_endline ("Error: " ^ a)
                     | Right b -> print_endline (string_of_int b);;


print_either (map_either (fun x -> x * x) (Right 2));;
print_either (map_either (fun x -> x * x) (Left "Error case"));;
