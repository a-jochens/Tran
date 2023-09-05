(* map on either type *)

type ('a, 'b) either = Left of 'a | Right of 'b


let rec map_either f e = match e with
                         | Left a -> Left a
                         | Right b -> Right (f b);;


[%pr (map_either (fun x -> x * x) (Right 2))];
[%pr (map_either (fun x -> x * x) (Left "Error case"))];
