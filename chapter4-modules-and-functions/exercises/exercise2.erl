-module(exercise2).
-export([my_tuple_to_list/1]).

my_tuple_to_list({}) -> [];
my_tuple_to_list(T) -> tuple2list(T, [], 1, tuple_size(T)).

tuple2list(T, L, Size, Size) -> lists:reverse([element(Size, T)|L]);
tuple2list(T, L, I, Size) -> 
	H = element(I, T),
	tuple2list(T, [H|L], I+1, Size).	
