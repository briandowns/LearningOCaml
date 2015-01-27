(* let lessons *)
let x = 1;;
Printf.printf "%d\n" x;;
let x = "I am a string now";;
Printf.printf "%s\n" x;;
let x = 41 in x + 1;;
Printf.printf "%s\n" x;;

let xy =
    let x = 'x' and y = 'y' in x ::[y];;

let ab =
    let a = 'a'
    and b = 'B' in Char.lowercase b
    in a ::[b];;

let up = Cha.uppercase in
    big_xy = List.map up xy ;
    big_ab = List.map up ab ;
    big_ab @ big_xy;;


