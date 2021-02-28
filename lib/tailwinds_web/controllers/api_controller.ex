defmodule TailwindsWeb.ApiController do
  use TailwindsWeb, :controller

  def hello(conn, params) do
    data = %{data: "foo"}
    
    render(conn, "hello.json", data: data)
  end
end
