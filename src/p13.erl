-module(p13).
-export([decode/1]).

%Написать декодер для стандартного алгоритма RLE

decode([]) -> [];
decode([{0, _S}|T]) -> decode(T);
decode([{N, S}|T]) -> [S|decode([{N-1, S}|T])].



