-module(exercise3).
-export([my_time_func/1]).


% exercise3:my_time_func(fun() -> [X+1 || X <- lists:seq(1,1000000)] end).
my_time_func(F) -> 
	Started = erlang:system_time(millisecond),
	Res = F(),
	{millisecond, erlang:system_time(millisecond) - Started, Res}.
