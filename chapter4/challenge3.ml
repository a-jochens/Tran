(* Find the height of a binary tree *)


type 'a bin_tree = 
    | Leaf
    | Node of 'a bin_tree * 'a * 'a bin_tree


let rec height bt = 
    match bt with
    | Leaf -> 0
    | Node (l, _, r) -> (1 + (max (height l) (height r)));;


Printf.printf "%d" (height Leaf);;
Printf.printf "%d" (height (Node (Node (Leaf, 2, Leaf), 1, 
                            Node (Node (Leaf, 4, Leaf), 3, Leaf))));;
