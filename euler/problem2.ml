(*
 By considering the terms in the Fibonacci sequence whose values do not exceed
 four million, find the sum of the even-valued terms.
*)

let rec fib n =
    if n < 2 then n
    else fib (n - 1) + fib (n - 2)
    ;;

(*print_int (fib 3999999);;*)
print_int (fib 100);;
