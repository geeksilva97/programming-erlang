-module(exercise5_7).
-export([even/1, odd/1, filter/2, split_using_filter/1, split_using_accumulators/1]).
-author("Edigleysson Silva <edigleyssonsilva@gmail.com>").

even(X) -> X rem 2 == 0.
odd(X) -> not even(X).

filter(Func, List) -> [X || X <- List, Func(X)].

split_using_filter(L) -> 
	Odd = filter(fun(X) -> odd(X) end, L),
	Even = filter(fun(X) -> even(X) end, L),
	{Odd, Even}.


split_using_accumulators(L) ->
	split_odd_even(L, [], []).


split_odd_even([], Odd, Even) -> 
	{lists:reverse(Odd), lists:reverse(Even)};
split_odd_even([H|T], Odd, Even) ->
	case (H rem 2) of
		1 -> split_odd_even(T, [H|Odd], Even);
		0 -> split_odd_even(T, Odd, [H|Even])
	end.
