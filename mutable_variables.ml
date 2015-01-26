(* declare x to be a mutable variable of type "int ref"  *)
let x = ref 0;;

(* update the value *)
x := 1;;

(* value is accessed by using `!` *)
Printf.printf "%d\n" !x
