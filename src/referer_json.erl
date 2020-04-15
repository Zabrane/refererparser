-module(referer_json).

-export([
    decode/1,
    encode/1,
    try_decode/1
]).

encode(Val) ->
    jsone:encode(Val, [{float_format, [{decimals, 4}, compact]}]).

decode(Val) ->
    jsone:decode(Val, [{object_format, proplist}, {allow_ctrl_chars, true}]).

try_decode(Val) ->
    jsone:try_decode(Val, [{object_format, proplist}, {allow_ctrl_chars, true}]).
