-module(p14).
-export([duplicate/1]).

%Написать дубликатор всех элементов входящего списка

duplicate([]) -> [];
duplicate([H|T]) -> [H, H|duplicate(T)].

