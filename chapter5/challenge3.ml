(* Tree elements to list with fold_tree *)

type 'a bin_tree = Leaf | Node of 'a bin_tree * 'a * 'a bin_tree;;

let rec fold_tree f init t =
    match t with
    | Leaf -> init
    | Node (l, x, r) -> f (fold_tree f init l) x (fold_tree f init r);;


let tree_to_list t = 
    fold_tree (fun l x r -> [x] @ l @ r) [] t;;


let print_list l = List.iter (Printf.printf "%d ") l;;

print_list (tree_to_list Leaf);;
print_list (tree_to_list (Node (Node (Leaf, 2, Leaf), 1, Node (Node (Leaf, 4, Leaf), 3, Leaf))));;
