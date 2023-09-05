(* Compose functions *)

let compose f g x = f (g x);;


let inc = (+) 1;;
let double = ( * ) 2;;

Printf.printf "%u " ((compose double inc) 3);;