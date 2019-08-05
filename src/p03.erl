-module(p03).
-export([element_at/2]).

%Найти N-й элемент списка

element_at([],_) -> defined;
%element_at([H|T],0) -> undefined;
element_at([H|T],1) -> H;
element_at([_H|T], N) -> element_at(T, N-1).


