redis 连接池 demo

启动　

    $ rebar3 shell

    ===> Verifying dependencies...
    ===> Compiling redis
    Erlang/OTP 18 [erts-7.3] [source] [64-bit] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]

    Eshell V7.3  (abort with ^G)
    1> application:start(eredis).
    ok
    2> application:start(poolboy).
    ok
    3> application:start(redis).
    ok
    4> redis:get().
    {ok,<<"bar">>}
    5>

