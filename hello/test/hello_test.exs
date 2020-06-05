defmodule HelloTest do
  use ExUnit.Case

  test "returns hello world" do
    assert {:ok, {{'HTTP/1.1', 200, 'OK'}, _headers, '<!doctype html><h1>Hello, Cowboy!</h1>'}} =
             :httpc.request('http://localhost:4001/')
  end
end
