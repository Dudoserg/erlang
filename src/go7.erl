%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Февр. 2020 14:08
%%%-------------------------------------------------------------------
-module(go7).
-author("Dudoser").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).
-export([start/0]).


cut(0) -> [];
cut(X) -> cut(X div 10) ++ [X rem 10].

rev([]) -> [];
rev([H]) -> [H];
rev([H | T]) -> (rev(T) ++ [H]).

tail([H | T]) -> T.

plus(F,S) ->
  [(F + S) div 10, (F + S) rem 10].

head([H|T]) -> H.

sum([],[],[P|A]) ->
  P;

sum([H1|T1],[],[P|A]) ->
  RES = (H1 + P) * 10 + sum([], T1, [0]);

sum([],[H2|T2],[P|A]) ->
  (H2 + P) * 10 + sum([], T2, [0]);

sum([HF | TF], [HS | TS], [P|A]) ->
  [PERENOS |[CELOE|ASD]] = plus(HF, HS),
  (CELOE + P + sum(TF, TS, [PERENOS]) ) * 10.

start() ->
  F = 228,
  L = 1488,
  erlang:display("result="),
  erlang:display(sum(rev(cut(L)), rev(cut(F)), [0])).


simple_test() ->
  [
    ?assert(sum(rev(cut(L)), rev(cut(F)), [0]) / 10, [15, 2, 1])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [15])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [2, 5, 7])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [7])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [3, 3, 17])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [15, 2, 1, 3, 3, 17, 2, 5, 7]))
  ].
