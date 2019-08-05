-module(p05).
-export([reverse/1]).

%Перевернуть список

reverse(L) -> reverse(L, []).
reverse([], N) -> N;
reverse([H|T], N) -> reverse(T, [H|N]).


%не работает
%reverse([H|[]]) -> H;
%reverse([H|T]) -> [reverse(T), H].

%reverse(L, 0) -> L;
%reverse([H|T], N) -> L=[T, H], reverse(L, N-1).



