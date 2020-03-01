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
  [];

sum([],[H2|T2],[P|A]) ->
  RAZ = H2 + P,
  DWA = sum([], T2, [0]),
  [RAZ] ++ DWA;



sum([HF | TF], [HS | TS], [P|A]) ->
  erlang:display(HF),
  erlang:display(HS),
  erlang:display(TF),
  erlang:display(TS),
  erlang:display(""),

  [PERENOS  |[CELOE|ASD]] = plus(HF, HS),

  RAZ = (CELOE + P),
  DWA = sum(TF, TS, [PERENOS]),
  [CELOE + P] ++ sum(TF, TS, [PERENOS]).

start() ->
  L = 228,
  F = 1488,
  erlang:display("result="),
  erlang:display(sum(rev(cut(L)), rev(cut(F)), [0])).
