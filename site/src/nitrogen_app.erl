-module(nitrogen_app).
-behaviour(application).
-export([start/2, loop/1, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    nitrogen_sup:start_link().
%%start_server()->
%%    register(myserv, spawn(nitrogen_app, loop, [])).
stop(_State) ->
    ok.


loop({_Front, {get_weather, City}})->
  Site = "https://wttr.in/",
  Format = ".png",
  Url = lists:concat([Site,City,Format]),
  index:newPicture(Url);

loop({_Front, {get_diagram, City}})->
  Site = "https://v2.wttr.in/",
  Format = ".png",
  Url = lists:concat([Site,City,Format]),
  index:newPicture(Url);

loop({_Front, {get_map, City}}) ->
  Site = "https://v3.wttr.in/",
  Format = ".png",
  Url = lists:concat([Site,City,Format]),
  index:newPicture(Url).

%%
%%loop()->
%%    receive
%%        {_Front, {get_weather, City}} -> Site = "https://wttr.in/",
%%                                        Format = ".png",
%%                                        Url = lists:concat([Site,City,Format]),
%%                                        index:newPicture(Url);
%%
%%        {_Front, {get_diagram, City}} -> Site = "https://v2.wttr.in/",
%%                                        Format = ".png",
%%                                        Url = lists:concat([Site,City,Format]),
%%                                        index:newPicture(Url);
%%
%%        {_Front, {get_map, City}} -> Site = "https://v3.wttr.in/",
%%                                        Format = ".png",
%%                                        Url = lists:concat([Site,City,Format]),
%%                                        index:newPicture(Url)
%%
%%    end,
%%loop().