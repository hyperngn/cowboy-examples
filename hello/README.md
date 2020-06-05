# Hello

A Hello world example of Cowboy!

## Usage

1. Install deps: `mix deps.get`
2. Start server: `mix run --no-halt` or `iex -S mix`

## How to read the code

1. [lib/hello/application.ex where the app is started](lib/hello/application.ex)
2. [lib/hello.ex contains the HTTP handler and server start logic](lib/hello.ex)
3. [test/hello_test.exs contains the tests](test/hello_test.exs)

## How this was set up

1. Create a mix app with supervisor called hello.
  ```
  mix new --sup hello
  ```
2. Update `hello/application.ex` and `hello.ex`

