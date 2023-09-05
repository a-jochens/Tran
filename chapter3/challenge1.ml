(* Prime number *)

let rec is_prime_iter i n = if i >= n then true
                            else if n mod i = 0 then false
                            else is_prime_iter (i + 1) n;;

let is_prime = is_prime_iter 2;;

let rec print_primes n = let _ = if is_prime n then Printf.printf "%u is prime.\n" n
                                 else Printf.printf "%u is not prime.\n" n in
                         if n <= 1 then print_endline "Done."
                         else print_primes (n - 1);;
                         
print_primes 20;;
