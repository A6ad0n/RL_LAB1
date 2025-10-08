is_sorted(Pred, List) :-
    callable(Pred),
    is_list(List),
    is_sorted_impl(Pred, List), !.
is_sorted(_, _) :-
    fail.

is_sorted_impl(_, []) :- !.
is_sorted_impl(_, [_]) :- !.
is_sorted_impl(Pred, [A,B|T]) :-
    call(Pred, A, B), !,
    is_sorted_impl(Pred, [B|T]).
is_sorted_impl(_, _) :-
    fail.

is_sorted(List) :-
    is_sorted(<, List).
