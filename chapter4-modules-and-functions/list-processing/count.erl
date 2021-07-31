-module(count).
-export([count_list/1]).

count_list([]) -> 0;
count_list([_|T]) -> 1 + count_list(T).
