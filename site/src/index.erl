%% -*- mode: nitrogen -*-
-module (index).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").


main() -> #template { file="./site/templates/bare.html" }.

title() -> "Welcome to my site".

body() ->
    #container_12 { body=[
        #grid_8 { alpha=true, prefix=0, suffix=0, omega=true, body=inner_body() }
    ]}.

inner_body() -> 
    [

        #h1 { style = "margin-left:250px; text-decoration:none; text-align:center;", text="Weather forecast" },
        #textbox {id=text_box, style="margin-left:150px;", placeholder="Enter the name of the city"},
        #button { id=button1, text="Show forecast", postback=forecastBtn },
        #button {id=button2, text="Show diagram", postback=diagramBtn},
        #button {id=button3, text="Show map", postback=mapBtn},
        #br{},
        #image {id=forecast, style="width:1100px; height:600px;", image="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAhcAAABeCAMAAACnz8b3AAAAA1BMVEX///+nxBvIAAAASElEQVR4nO3BMQEAAADCoPVPbQlPoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAICXAcTQAAEvV4jRAAAAAElFTkSuQmCC"}
    ].
	
event(forecastBtn) ->
    City = list_to_atom(wf:q(text_box)),
    nitrogen_app:loop({self(),{get_weather, City}});


%%    Site = list_to_atom("https://wttr.in/"),
%%    Format = list_to_atom(".png"),
%%    Url = lists:concat([Site,City,Format]),
%%    newPicture(Url);
%%    Format = list_to_atom(".png"),
%%    wf:replace(forecast, #image{id=forecast, style ="width:1100px; height:600px;",image=(lists:concat([Site,City,Format]))});


event(diagramBtn) ->
    City = list_to_atom(wf:q(text_box)),
    nitrogen_app:loop({self(),{get_diagram, City}});
%%    Site = list_to_atom("https://v2.wttr.in/"),
%%    Format = list_to_atom(".png"),
%%    wf:replace(forecast, #image{id=forecast, style ="width:1100px; height:600px;",image=(lists:concat([Site,City,Format]))});

event(mapBtn) ->
    City = list_to_atom(wf:q(text_box)),
    nitrogen_app:loop({self(),{get_map, City}}).
%%    Site = list_to_atom("https://v3.wttr.in/"),
%%    Format = list_to_atom(".png"),
%%    wf:replace(forecast, #image{id=forecast, style ="width:800px; height:1000px;",image=(lists:concat([Site,City,Format]))}).


newPicture(Url)->
    wf:replace(forecast, #image{id=forecast, style ="size:100%",image=(Url)}).

%%rpc(Server, Request) ->
%%    Server ! Request.
%%
%%show_result(Url) ->
%%    wf:replace(forecast, #image{id=forecast, style ="width:1100px; height:600px;",image=Url}).
%%
%%
%%loop() ->
%%    receive
%%        {get_map, City} ->  Site = list_to_atom("v3.wttr.in/"),
%%            Format = list_to_atom(".png"),
%%            Url = lists:concat([Site,City,Format]),
%%            show_result(Url);
%%        {get_weather, City} -> Site = list_to_atom("wttr.in/"),
%%            Format = list_to_atom(".png"),
%%            Wget = list_to_atom("wget "),
%%            Eog = list_to_atom("eog "),
%%            RmAll = list_to_atom("rm *.png"),
%%            os:cmd(RmAll), % deletes old information about current city
%%            os:cmd(lists:concat([Wget,Site,City,Format])), % downloads information about
%%            os:cmd(lists:concat([Eog,City,Format])); %shows information;
%%        {get_diagram, City} -> Site = list_to_atom("v2.wttr.in/"),
%%            Format = list_to_atom(".png"),
%%            Wget = list_to_atom("wget "),
%%            Eog = list_to_atom("eog "),
%%            RmAll = list_to_atom("rm *.png"),
%%            os:cmd(RmAll), % deletes old information about current city
%%            os:cmd(lists:concat([Wget,Site,City,Format])), % downloads information about
%%            os:cmd(lists:concat([Eog,City,Format])); %shows information
%%        Any -> io:format("Any: ~p~n", [Any])
%%    end,
%%loop().
