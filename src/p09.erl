-module(p09).
-export([pack/1]).

%Запаковать последовательно следующие дубликаты во вложеные списки

pack(L) -> pack(L, []).
pack([],_) -> [];
pack([H,H|T], L) -> pack([H|T], [H|L]);
pack([H|T], L) -> [[H|L]|pack(T, [])].
