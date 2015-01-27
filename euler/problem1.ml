(*
  If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
 *)

let rec build_list s e =
    let x = s+1 in
    if s <= e then s::(build_list x e) else [];;

let problem el =
    List.fold_left (+) 0 (List.filter (fun x -> (x mod 3) = 0 || (x mod 5) = 0) el);;

print_int (problem (build_list 0 999));;
