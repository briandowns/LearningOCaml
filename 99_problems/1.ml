let my_list = [1; 2; 3; 4;];;

let rec last = function
    | [] -> None
    | [x] -> Some x
    | _ :: t -> last t;;

print_int (last my_list)
