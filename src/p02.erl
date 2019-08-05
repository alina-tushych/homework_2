-module(p02).
-export([but_last/1]).

%Найти два последних элемента списка

but_last([A,B]) -> [A,B];
but_last([_H|T]) -> but_last(T).

%оптимизированный

%but_last(L=[_,_]) -> L;
%but_last([_H|T]) -> but_last(T).
