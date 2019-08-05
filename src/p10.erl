-module(p10).
-export([encode/1]).

%Закодировать список с использованием алгоритма RLE

encode(L) -> encode(L, 1).
encode([], _) -> [];
encode([H, H|T], N) -> encode([H|T], N+1);
encode([H|T], N) -> [{N, H}|encode(T, 1)].


