-module(qsort).
-export([qsort/1]).

qsort([]) -> [];
qsort([Pivot|T]) ->
	qsort([X || X <- T, X < Pivot]) ++ % values that are under Pivot ("X" where X is an item from T and "X" is less than Pivot)
	[Pivot] ++ % put Pivot in the middle
	qsort([X || X <- T, X >= Pivot]). % "X" where X is an item from T and X is greater than or equal Pivot
