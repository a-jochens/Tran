(* Add two natural numbers *)

type nat = Zero | Succ of nat;;


let rec add m n = match m with
                  | Zero -> n
                  | Succ pred_m -> Succ (add pred_m n);;


let rec str_nat n = match n with
                    | Zero -> "Zero"
                    | Succ m -> "Succ " ^ (str_nat m);;

print_endline (str_nat (add Zero Zero));;
print_endline (str_nat (add Zero (Succ Zero)));;
print_endline (str_nat (add (Succ Zero) (Succ Zero)));;
