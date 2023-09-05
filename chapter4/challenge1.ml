(* Find the longest string in a string list *)

let rec longest_string l = 
    match l with
    | [] -> None
    | hd :: tl -> let longest_length_tl = match longest_string tl with
                                          | None -> 0
                                          | Some s -> String.length s in 
                  if String.length hd > longest_length_tl then Some hd
                  else longest_string tl;;


match (longest_string []) with
| None -> print_endline "None"
| Some s -> print_endline s;;

match (longest_string ["a"; "abc"; "ab"]) with
| None -> print_endline "None"
| Some s -> print_endline s;;
