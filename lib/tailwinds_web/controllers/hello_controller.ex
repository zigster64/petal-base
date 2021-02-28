defmodule TailwindsWeb.HelloController do
  use TailwindsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end

  def show(conn, _params) do
    page = %{title: "foo"}
    render(conn, "show.json", page: page)
  end
end
