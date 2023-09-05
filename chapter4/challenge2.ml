(* Concatenate strings *)

let rec concat s l = 
    match l with
    | [] -> ""
    | hd :: tl -> match tl with
                  | [] -> hd
                  | hd2 :: tl2 -> concat s ((hd ^ s ^ hd2) :: tl2);;


print_endline (concat "," []);;
print_endline (concat "," ["a"]);;
print_endline (concat "," ["a"; "b"]);;
print_endline (concat "--" ["a"; "b"; "c"]);;
