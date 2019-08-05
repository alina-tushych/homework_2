-module(p06).
-export([is_palindrome/1]).

%Определить, является ли список палиндромом

is_palindrome(L) -> is_palindrome(L, L, []).
is_palindrome([H1|T1], [], [H1|T2]) -> is_palindrome(T1, [], T2);
is_palindrome(L, [H|T], L2) -> is_palindrome(L, T, [H|L2]);
is_palindrome([], [], []) -> true;
is_palindrome(_, [], _) -> false.




%неудачные попытки

%is_palindrome([]) -> true;
%L1=[H|T],
%L2=[T|H],
%is_palindrome(L1==L2) -> true.


%is_palindrome(L) -> is_palindrome(L, []).
%is_palindrome([], N) -> N;
%is_palindrome([H|T], N) -> is_palindrome(T, [H|N]).
