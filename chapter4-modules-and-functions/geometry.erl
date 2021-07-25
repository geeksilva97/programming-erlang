% notation -module(module_name) // the name of the module in declaration must be the same as the base of the file where the module is there
-module(geometry).
% exported functions to be used outside of module // The notation Name/N means a function called Name with N arguments; N is called the arity of the function.
% exported functions are equivalente to public methods in an object-oriented programming language; nonexported functions are equivalent to provate methods
-export([area/1]).

% the function area consists of two clauses // The clases are separated by a semicolon (;), and final clause is terminated by dot (.) whitespace.
% each clause has a head and a body separated by an arrow (->). The head consists of a function name followrd by zero or more patterns,
% and the body consists a sequence expressions, which are evaluated in the pattern in the head is successfully matched against the calling arguments.
area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side.

% in shell 
% > c(geometry).
% > geometry:area({rectangle, 10, 5}).
% > geometry:area({sqare, 3}).
