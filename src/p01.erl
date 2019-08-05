-module(p01).
-export([last/1]).

%Найти последний элемент списка

last([H|[]]) -> H;
last([_H|T]) -> last(T).


%Способ с лекции

%last([H|T]) -> H;
%last([H|T]) -> last(T).



