-module(m).
-include_lib("eunit/include/eunit.hrl").
-export([say_hello/0]).

say_hello() -> "Hello World".
