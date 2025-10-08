:- [lab2].

test_empty :-
    is_lower_triangular([]).

test_1x1 :-
    is_lower_triangular([[1]]),
    is_lower_triangular([[0]]).

test_2x2 :-
    is_lower_triangular([[1,0],[2,3]]),
    is_lower_triangular([[0,0],[0,0]]),
    \+ is_lower_triangular([[1,1],[2,3]]).

test_3x3 :-
    is_lower_triangular([[1,0,0],[2,3,0],[4,5,6]]),
    \+ is_lower_triangular([[1,0,1],[2,3,0],[4,5,6]]).

test_rectangular :-
    is_lower_triangular([[1,0,0],[2,3,0]]),
    \+ is_lower_triangular([[1,0,1],[2,3,0]]).

run_tests :-
    test_empty,
    test_1x1,
    test_2x2,
    test_3x3,
    test_rectangular,
    write('Все тесты пройдены!'), nl.
