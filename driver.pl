%driver.pl

:- [guide].

% helper functions to print each section 
write_male(X) :- write(X), write(' is male.'), nl.
print_male :- forall(male(X), write_male(X)).

write_female(X) :- write(X), write(' is female.'), nl.
print_fem :- forall(female(X), write_female(X)).

write_stark(X) :- write(X), write(' is part of House Stark.'), nl.
print_stark :- forall(house(X, 'stark'), write_stark(X)).

write_tar(X) :- write(X), write(' is part of House Targaryen.'), nl.
print_tar :- forall(house(X, 'targaryen'), write_tar(X)).

write_lan(X) :- write(X), write(' is part of House Lannister.'), nl.
print_lan :- forall(house(X, 'lannister'), write_lan(X)).

write_bar(X) :- write(X), write(' is part of House Baratheon.'), nl.
print_bar :- forall(house(X, 'baratheon'), write_bar(X)).

write_dead(X) :- write(X), write(' is dead.'), nl.
print_dead :- forall(dead(X), write_dead(X)).

run_opt(1) :- 
    write('House Stark: '), nl,
    print_stark, nl, 
    write('House Targaryen: '), nl,
    print_tar, nl, 
    write('House Lannister: '), nl,
    print_lan, nl, 
    write('House Baratheon: '), nl,
    print_bar, nl, halt. 

run_opt(2) :- 
    write('Males: '), nl,
    print_male, nl, 
    write('Females: '), nl,
    print_fem, nl, halt.

run_opt(3) :- 
    write('Dead: '), nl,
    print_dead, nl, halt.
  

run_opt(4) :- write('Program Terminated'), nl, halt. 

run_opt(_) :- write('Invalid option'), nl, halt.  

main :- 
    nl,
    write('>   Enter a selection followed by a period to list characters per category (Warning: spoilers).'), nl,
    write('>   1. House'), nl,
    write('>   2. Gender'), nl,
    write('>   3. Dead'), nl,
    write('>   4. Exit'), nl, nl,
    read(Choice),
    run_opt(Choice), main.