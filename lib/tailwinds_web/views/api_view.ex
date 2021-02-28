defmodule TailwindsWeb.ApiView do
  use TailwindsWeb, :view

  def render("hello.json", %{data: data}) do
    data
  end
end
