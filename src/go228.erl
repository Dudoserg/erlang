%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Март 2020 22:23
%%%-------------------------------------------------------------------
-module(go228).
-author("Dudoser").

%% API
-export([]).
-export([start/0]).


sumList([],[]) ->
  [];

sumList([H],[]) ->
  erlang:display(H),
  [H];

sumList([],[H]) ->
  erlang:display(H),
  [H];

sumList([],H) ->
  erlang:display(H),
  [H];

sumList([H1],[H2]) ->
  erlang:display(H1),
  erlang:display(H2),
  H1 + H2;

sumList([H1],[H2]) ->
  erlang:display(H1),
  erlang:display(H2),
  [(H1 + H2) div 10, (H1 + H2) rem 10];

sumList([H1|T1],[]) ->
  erlang:display(H1),
  erlang:display(T1),
  [H];

sumList([H1| T1],[H2| T2]) ->
  erlang:display(H1),
  erlang:display(H2),
  erlang:display(T1),
  erlang:display(T2),
  [H1 + H2] ++ sumList(T1, T2).

start() ->
  L = sumList([1, 2, 3, 4, 5], [9, 8, 7]),
  erlang:display(L).



