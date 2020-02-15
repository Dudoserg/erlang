%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Февр. 2020 10:17
%%%-------------------------------------------------------------------
-module(go2).
-author("Dudoser").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).
-export([start/0]).


kek([plus, H, T | G]) -> kek(H) + kek(T);
kek([minus, H, T | G]) -> kek(H) - kek(T);
kek([mul, H, T | G]) -> kek(H) * kek(T);
kek([dv, H, T | G]) -> kek(H) / kek(T);
kek(X) -> X.


start() ->
  TREE = [plus, [minus, [plus, 1, 3], 4], [mul, [dv, 2, 3], 7]],
  erlang:display(kek(TREE)).

