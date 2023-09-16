(* Merge two streams *)

let rec stream_take n s = if n <= 0 then []
                          else stream_hd s :: stream_take (n - 1) (stream_tl s);;

let evens = <0; 2; 4; 6; 8; ...>;;
let odds = <1; 3; 5; 7; 9; ...>;;


let rec stream_merge s1 s2 = s1;;







let print_list l = List.iter (Printf.printf "%d ") l;;

print_list (stream_take 10 (stream_merge evens odds));;

