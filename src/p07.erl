-module(p07).
-export([flatten/1]).

%Выровнять структуру с вложеными списками

flatten(L) -> flatten(L, []).
flatten([], L) -> L;
flatten([H|T], L) -> flatten(H, flatten(T, L));
flatten(H, L) -> [H|L].
