-module(p15).
-export([replicate/2]).

%Написать функцию-репликатор всех элементов входящего списка

replicate(L, N) -> replicate(L, N, N).
replicate([_H|T], N, 0) -> replicate(T, N, N);
replicate([H|T], N, N1) -> [H|replicate([H|T], N, N1-1)];
replicate([], _, _) -> [].




