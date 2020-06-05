defmodule Hello do
  # The handler module which handles all requests, its `init` function is called
  # by Cowboy for all matching requests.
  defmodule Handler do
    def init(req, _opts) do
      resp =
        :cowboy_req.reply(
          _status = 200,
          _headers = %{"content-type" => "text/html; charset=utf-8"},
          _body = "<!doctype html><h1>Hello, Cowboy!</h1>",
          _request = req
        )

      {:ok, resp, []}
    end
  end

  def start do
    # compile the routes
    routes =
      :cowboy_router.compile([
        {:_,
         [
           # { wildcard, handler module (needs to have an init function), options }
           {:_, Handler, []}
         ]}
      ])

    require Logger
    Logger.info("Staring server at http://localhost:4001/")

    # start an http server
    :cowboy.start_clear(
      :hello_http,
      [port: 4001],
      %{env: %{dispatch: routes}}
    )
  end
end
