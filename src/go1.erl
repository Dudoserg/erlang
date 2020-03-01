%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Февр. 2020 11:38
%%%-------------------------------------------------------------------
-module(go1).
-author("Dudoser").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).
-export([start/0]).



cut(0) -> [];
cut(X) -> cut(X div 10) ++ [X rem 10].

start() ->
  R = cut(15244230),
  erlang:display(R).



simple_test() ->
  [
    ?assertEqual(cut(15244230), [1,5,2,4,4,2,3,0])
  ].

