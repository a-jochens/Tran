(* Calculating absolute value in functional style *)

let abs x = if x > 0 then x else -x;;

print_int (abs 7); print_endline "";
print_int (abs (-7)); print_endline "";
print_int (abs 0); print_endline ""
