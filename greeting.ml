(*
 * Lessons:
 *   - A sequence of commands is denoted by the symbol ;
 *   - Output is bufferized: to flush STDOUT, use `flush stdout`
 *   - Define identifier name
 *     - let name = ...
 *   - To read a single line from STDIN, use `input_line stdin`
 *   - String concatination with `^` (str1 ^ str2)
 *   - Program exit status:
 *     - `exit 0` for good/clean execution
 *     - `exit 2` for failure
 *)

print_string "Enter your first name: ";
flush stdout;
let answer = input_line stdin in
print_string ("Hi " ^ answer);
print_string ", good to see ya\n";
exit 0;;
