open Printf;;

let main argc argv =
    printf "CLI has %i args\n" argc;
    for i = 0 to argc -1 do
        printf "arg %i is %s\n" i argv.(i)
    done;;

main (Array.length Sys.argv) Sys.argv;;
