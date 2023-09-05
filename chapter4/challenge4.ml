(* Find the predecessor of a natural number *)

type nat = Zero | Succ of nat;;

let pred n = match n with
             | Zero -> None
             | Succ m -> Some m;;


let rec str_nat opt_n = match opt_n with
                        | None -> "None"
                        | Some n -> match n with
                                    | Zero -> "Zero"
                                    | Succ m -> "Succ " ^ (str_nat (Some m));;

print_endline (str_nat (pred Zero));;
print_endline (str_nat (pred (Succ Zero)));;
print_endline (str_nat (pred (Succ (Succ Zero))));;
