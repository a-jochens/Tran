(* Pipe operator question *)

Printf.printf "%d"  ([1; 2; 3; 4] |> List.filter ((<=) 3) |>
                     List.map (( * ) 2) |> List.fold_left (+) 0);;
