%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Февр. 2020 10:17
%%%-------------------------------------------------------------------
-module(go3).
-author("Dudoser").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).
-export([start/0]).


acer(X,Y) -> [X] ++ [Y].


first(X,0) -> [];
first(X,Y) -> first(X,Y-1) ++ [acer(X,Y-1)].

second(0,Y) -> [];
second(X,Y) -> second(X-1, Y) ++ [first(X-1,Y)].

%%kek(X,Y) -> acer(X).



start() ->
  R = acer(5,5),
  erlang:display(second(5,5)).

