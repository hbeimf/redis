-module(redis).

%% API
-compile(export_all).

%%%===================================================================
%%% API functions
%%% http://www.cnblogs.com/ikodota/archive/2012/03/05/php_redis_cn.html
%%%===================================================================

g() ->
  lists:foreach(fun(I) ->
    R = redis:get(),
    io:format("~p ~p ~n", [I, R])
  end, lists:seq(1, 100000)).


set() ->
  redis_query:q(pool1, ["SET", "foo", "bar"]).
set(Key, Value) ->
  redis_query:q(pool1, ["SET", Key, Value]).

get() ->
  redis_query:q(pool1, ["GET", "foo"]).
get(Key) ->
  redis_query:q(pool1, ["GET", Key]).

del() ->
  redis_query:q(pool1, ["DEL", "foo"]).
del(Key) ->
  redis_query:q(pool1, ["DEL", Key]).

keys() ->
  redis_query:q(pool1, ["KEYS", "*"]).
keys(Key) ->
  redis_query:q(pool1, ["KEYS", "*"++lib_fun:to_str(Key)++"*"]).

type() ->
      redis_query:q(pool1, ["TYPE", "foo"]).
type(Key) ->
      redis_query:q(pool1, ["TYPE", Key]).





