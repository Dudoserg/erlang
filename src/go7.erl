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
  erlang:display("result="),
  erlang:display(sum(rev(cut(228)), rev(cut(1488)), [0]) / 10).



