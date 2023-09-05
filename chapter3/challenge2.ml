(* Naive Fibonacci *)

let rec fib n = if n = 0 then 0 else
                if n = 1 || n = 2 then 1 else
                fib (n - 1) + fib (n - 2);;

let rec print_fib n = if n < 1 then print_endline "Done." else
                      let _ = Printf.printf "%u " (fib n) in
                      print_fib (n - 1);;

print_fib 20;;
