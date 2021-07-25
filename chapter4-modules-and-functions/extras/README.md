# Extras of chapter 4: Writing tests with EUnit

## Introduction
Here we have some examples of testin in files *erlang_tests.erl* and *m.erl*. To run it you should compile them and run as ModuleName:test().

NOTE: You can see the file `m.erl` and `m_tests.erl`. Thes files are connecte and this notation is used tu write code and tests in separated files.

## Running `erlang_tests.erl`
1. Open shell with `erl`.
2. Run `c(erlang_tests).` to compile
3. Run tests with `erlang_tests:test().`

## Running `m.erl`
1. Compile `m_tests.erl` using `erlc m_tests.erl`.
2. Open Erlang shell and compile m using `c(m).`
3. Run tests with `m:test()`. Note that we call tests by `m` module and it will call `m_tests` by itself.

## References
- http://erlang.org/doc/apps/eunit/chapter.html#Including_the_EUnit_header_file
