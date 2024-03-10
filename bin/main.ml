let () = Random.self_init ()
let secret_number = Random.int 100 + 1

let rec get_guess () =
        print_string "Enter your guess (1-100): ";
        match read_int_opt () with
                | Some n when n >= 1 && n <= 100 -> n
        | _ -> print_endline "Invalid input. Please enter a number between 1 and 100."; get_guess()

let rec guess () =
        let guess_try = get_guess () in
        if guess_try < secret_number then
        (print_endline "Too low!"; guess ())
        else if guess_try > secret_number then
        (print_endline "Too high!"; guess ())
        else        
        print_endline "Congratulations ! You guesed it !"

let () =
        print_endline "Welcome to the Guess the Number game!";
        guess ()
(* read user input *)
