:- [lab1].

test_invalid_input :-
    \+ is_sorted(0),
    is_sorted([[]]).

test_empty :- 
    is_sorted([]).

test_1elem :-
    is_sorted([-1]),
    is_sorted([1]).

test_is_sorted_1 :-
    is_sorted([1,2,3,4]),
    \+ is_sorted([4,3,2,1]),
    is_sorted([]),
    is_sorted([1]),
    \+ is_sorted([1,3,2]).

test_is_sorted_2 :-
    is_sorted(<, [1,2,3]),
    is_sorted(>, [3,2,1]),
    \+ is_sorted(<, [1,3,2]).

run_tests :-
    test_invalid_input,
    test_empty,
    test_is_sorted_1,
    test_is_sorted_2,
    write('Все тесты пройдены!'), nl.

