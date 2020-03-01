%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Февр. 2020 17:19
%%%-------------------------------------------------------------------
-module(go8).
-author("Dudoser").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).
-export([start/0]).


rev([]) -> [];
rev([H]) -> [H];
rev([H | T]) -> (rev(T) ++ [H]).

tail([H | T]) -> T.

kek([], F) -> false;
kek([H], F) -> false;
kek([H | T], F) ->
   [H1|T1] = rev([H | T]),
  ([H] == F) or (([H] ++ T) == F) or kek(T, F) or kek(rev(tail(rev([H] ++ T))), F) or ([H1] == F).

start() ->
  L = [15, 2, 1, 3, 3, 17, 2, 5, 7],
  F = [5, 7],
  erlang:display("result="),
  erlang:display(kek(L, F)).

simple_test() ->
  [
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [15, 2, 1])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [15])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [2, 5, 7])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [7])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [3, 3, 17])),
    ?assert(kek([15, 2, 1, 3, 3, 17, 2, 5, 7], [15, 2, 1, 3, 3, 17, 2, 5, 7]))
  ].
