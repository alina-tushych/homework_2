-module(p12).
-export([decode_modified/1]).

%Написать декодер для модифицированого алгоритма RLE

decode_modified(L) -> decode_modified(L, 1).
decode_modified([], 1) -> [];
decode_modified([{N, S}|T], 1) -> decode_modified([S|T], N);
decode_modified([H|T], 1) -> [H|decode_modified(T, 1)];
decode_modified([S|T], N) -> [S|decode_modified([S|T], N-1)].

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

fib_test_() -> [
    ?_assert(encode([]) =:= []),
    ?_assert(encode([1]) =:= [1]),
    ?_assert(encode([1,1,2,3,3]) =:= [{2,1}, 2, {2,3}])
].
-endif.
