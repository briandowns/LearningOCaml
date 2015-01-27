(* pattern-matching strings *)
let string_of_int x = match x with
    | 0 -> "zero"
    | 1 -> "one"
    | 2 -> "two"
    | _ -> "many";;

Printf.printf "%s\n" (string_of_int 0);;

let string_of_int2 x = match x with
    | 0 -> "zero"
    | 1 -> "one"
    | 2 -> "two"
    | _ -> "many";;

Printf.printf "%s\n" (string_of_int2 2);;

(* pattern-matching chars *)
let is_capital x = match x with
    | 'a' .. 'z' -> false
    | 'A' .. 'Z' -> true
    | _          -> failwith "Not a valid letter";;

Printf.printf "%B\n" (is_capital 'y');;
Printf.printf "%B\n" (is_capital 'Y');;

(* pattern-matching tuples *)
let fit str len = match (str, len) with
    | ("foo", 51) -> true
    | ("bar", 51) -> true
    | (_    , 42) -> false
    | _           -> (String.length str) = len;;

Printf.printf "%B\n" (fit "foo" 51);;

(* above example that makes a bit more sense *)
let fit str len = match (str, len) with
    | (_, 51) when (str="foo" || str="bar") -> true
    | (_, x) when x=42                      -> false
    | _                                     -> (String.length str) = len;;

Printf.printf "%B\n" (fit "baz" 22);;

(* pattern-matching lists *)
let head = function
    | []   -> failwith "empty list"
    | h::t -> h;;

Printf.printf "%s\n" (head ["Hey"; "Hola"; "Hello"]);;

let second_element = function
    | []      -> failwith "the list is empty"
    | [_]     -> failwith "the list contains only one element"
    | _::e::_ -> e;;

Printf.printf "%s\n" (second_element ["Hey"; "Hola"; "Hello"]);;

let head_head = function
    | []        -> failwith "the list is empty"
    | []::_     -> failwith "the head is the empty list"
    | (h::_)::_ -> h;;

Printf.printf "%s\n" (head_head [["yo"; "ya"; "ye"]; ["Hola"]; ["Hello"]]);;

(* pattern-matching arrays *)
let has_size_two = function
    | [| _; _ |] -> true
    | _          -> false;;

Printf.printf "%B\n" (has_size_two [| 1; 4; 6 |])

let f = function
    | [] -> failwith "empty list"
    | [| _; (_, x) |]::_ -> x
    | _ -> failwith "the first array should be of size two";;

(* exhaustiveness *)
let head_partial = function
    | h::_ -> h;;

Printf.printf "%s\n" (head_partial ["A"; "B"; "C"])

let head = function
    | []   -> failwith "empty list"
    | h::_ -> h
    | [h]  -> h;;

Printf.printf "%s\n" (head_partial ["A"; "B"; "C"])
