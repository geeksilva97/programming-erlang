-module(my_own_for_loop).
-export([for/3]).

% when iterator is equal to max
for(Max, Max, F) -> [F(Max)];

% returns a list with already transformed in Head
for(I, Max, F) -> [F(I) | for(I+1, Max, F)].
