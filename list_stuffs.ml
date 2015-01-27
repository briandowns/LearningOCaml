let l1 = [1; 2; 3; 4;];;
let l2 = ["Hi"; "Hello"; "Hola";];;

(* print list length  *)
Printf.printf "%d\n" (List.length l1);;
Printf.printf "%d\n" (List.length l2);;

(* print list head *)
Printf.printf "%d\n" (List.hd l1);;
Printf.printf "%s\n" (List.hd l2);;

(* prepend element to a list *)
5::l1;;

(* prepend a few element to list *)
5::6::7::8::9::l1;;

(* iterate over the list *)
let speak elem =
        Printf.printf "%s\n" elem in
        List.iter speak l2;;

(* fold example *)
List.fold_left (fun x y -> x + y) 0 [9; 8; 7; 6; 5; 4; 3; 2; 1];;
