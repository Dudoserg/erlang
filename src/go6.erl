%%%-------------------------------------------------------------------
%%% @author Dudoser
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Февр. 2020 10:17
%%%-------------------------------------------------------------------
-module(go6).
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
  TREE = [dv, [plus, [minus, [plus, 1, 3], 4], [mul, [dv, 2, 3], 7]], 5],
  erlang:display(kek(TREE)).

simple_test() ->
  [
    ?assert(abs(kek([plus, [minus, [plus, 1, 3], 4], [mul, [dv, 2, 3], 7]]) - 4.66666666667) < 0.00001),
    ?assert(abs(kek([plus, [minus, [plus, 1, 3], 4], [mul, [dv, 2, 3], 5]]) - 3.33333333333) < 0.00001),
    ?assert(abs(kek([plus, [minus, [plus, 1, 3], 4], [mul, [dv, 12, 3], -4]]) - (-16.0)) < 0.00001),
    ?assert(abs(kek([dv, [plus, [minus, [plus, 1, 3], 4], [mul, [dv, 12, 3], -4]], 5]) - (-3.2)) < 0.00001)
  ].
