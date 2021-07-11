-module(walks).
-export([plan_route/2]).

% means if the function plan_route/2 is called with two input argumentos, both of type point(), then it will return an object of type route().
-spec plan_route(point(), point()) -> route().

% Introduces a new type called direction() whose value is one the atoms north, south, east, or west.
-type direction() :: north | south | east | west.

% Means that the type point() is a tuple of two integers (integer() is a predefined type).
-type point() :: {integer(), integer()}.

% Defines the type route() to be a list of 3-tuples, where each tuple contains the atom go, an object of type direction, and an integer. 
-type route() :: [go, direction(), integer()].
