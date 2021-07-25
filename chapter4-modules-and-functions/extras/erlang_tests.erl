-module(erlang_tests).
-include_lib("eunit/include/eunit.hrl").
-export([hello/0]).

hello() -> "Hello world".

% really simple test case
reverse_test() -> lists:reverse([1,2,3]).

% more interesting tests
reverse_nil_test() -> [] = lists:reverse([]).
reverse_one_test() -> [1] = lists:reverse([1]).
reverse_two_test() -> [2, 1] = lists:reverse([1, 2]).

length_test() -> ?assert(length([1,2,3]) =:= 3).
