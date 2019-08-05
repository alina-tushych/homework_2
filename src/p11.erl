-module(p11).
-export([encode_modified/1]).

%Закодировать список с использованием модифицированоого алгоритма RLE

encode_modified(L) -> encode_modified(L, 1).
encode_modified([], _) -> [];
encode_modified([H, H|T], N) -> encode_modified([H|T], N+1);
encode_modified([H|T], 1) -> [H|encode_modified(T, 1)];
encode_modified([H|T], N) -> [{N, H}|encode_modified(T, 1)].

