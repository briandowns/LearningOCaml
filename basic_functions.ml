open Printf;;

(* func with no args *)
let func1 = 10 * 10;;

(* func with 1 arg (int) *)
let func2 x = x * 10;;

(* func with 2 args (strings)  *)
let func3 first last = "Hello " ^ first ^ last;;

let answer1 = func2 200;;
let answer2 = func3 "John" "Smith";;

printf "func1: %d\n" func1;;
printf "func2: %d\n" answer1;;
printf "func3: %s\n" answer2;;
