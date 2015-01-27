if 1+2  = 3 then (
    print_string "1+2=3\n";
    print_string "Correct!\n";
);;

begin 1+2 end * 3;;
let square x = x * x;;
(* used to indicate precidence *)
print_int (square (1+1));;
print_int (square 1+1);;
