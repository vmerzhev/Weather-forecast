%% -*- mode: nitrogen -*-
%% vim: ts=4 sw=4 et
-module (action_showWeather).
-include_lib ("nitrogen_core/include/wf.hrl").
-include("records.hrl").
-export([
    render_action/1
]).

%% move the following record definition to site/include/records.hrl
-record(showWeather, {?ACTION_BASE(action_showWeather),
        attr1 :: any(),
        attr2 :: any()
    }).

-spec render_action(#showWeather{}) -> actions().
render_action(_Record = #showWeather{}) ->
    "alert('Hello, from showWeather!');".
