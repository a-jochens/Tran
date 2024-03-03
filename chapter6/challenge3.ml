(* Stream of Fibonacci numbers *)

(* Assorted Definitions from Chapter 6 *)

type 'a stream = Cons of 'a * 'a stream Lazy.t;;

let stream_hd (Cons (h, _)) = h;;
let stream_tl (Cons (_, t)) = Lazy.force t;;

let rec naturals_from n = Cons (n, lazy (naturals_from (n+1)));;

let naturals = naturals_from 0;;

let rec stream_take n s = if n <= 0 then []
                          else stream_hd s :: stream_take (n - 1) (stream_tl s);;

let rec stream_map f s = Cons (f (stream_hd s), lazy (stream_map f (stream_tl s)));;

let rec stream_filter p s = 
    if p (stream_hd s) then Cons (stream_hd s, lazy (stream_filter p (stream_tl s)))
    else stream_filter p (stream_tl s);;

let evens = stream_filter (fun x -> x mod 2 = 0) naturals;;
let odds = stream_filter (fun x -> x mod 2 = 1) naturals;;

let rec stream_zip_with f s1 s2 =
    Cons (f (stream_hd s1) (stream_hd s2), 
          lazy (stream_zip_with f (stream_tl s1) (stream_tl s2)));; 
          
let rec stream_merge s1 s2 = Cons (stream_hd s1, lazy (stream_merge s2 (stream_tl s1)));;


(* Challenge 3 *)

let rec fib_from m n = Cons (m, lazy (Cons (n, lazy (stream_zip_with (+) 
    (fib_from m n) (fib_from n (m + n))))));;

let fib = fib_from 1 1;;


(* Tests *)

let print_list l = List.iter (Printf.printf "%d ") l;;

print_list (stream_take 20 fib);;

