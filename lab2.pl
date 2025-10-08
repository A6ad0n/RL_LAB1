is_lower_triangular([]) :- !.
is_lower_triangular(Matrix) :-
    is_list(Matrix),
    maplist(is_list, Matrix),
    Matrix = [FirstRow|_],
    maplist(same_length(FirstRow), Matrix),
    check_lower(Matrix, 0).

check_lower([], _).
check_lower([Row|Rows], I) :-
    check_row(Row, I, 0),
    I1 is I + 1,
    check_lower(Rows, I1).

check_row([], _, _).
check_row([Elem|Elems], I, J) :-
    (J > I -> Elem =:= 0 ; true),
    J1 is J + 1,
    check_row(Elems, I, J1).
