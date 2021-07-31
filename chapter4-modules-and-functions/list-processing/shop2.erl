-module(shop2).
-export([total/1]).
-import(sum, [sum/1]).
-import(my_map, [map/2]).

total(L) ->
	sum(map(fun({What, N}) -> shop:cost(What) * N end, L)).
