-module(m_tests).
-include_lib("eunit/include/eunit.hrl").
simple_test() -> ?assert(1+1 == 2).
debug_test() -> ?debugMsg("debugginh").
