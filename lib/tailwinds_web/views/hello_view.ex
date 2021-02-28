defmodule TailwindsWeb.HelloView do
  use TailwindsWeb, :view

  def render("index.json", %{pages: pages}) do
    %{data: render_many(pages, TailwindsWeb.HelloView, "page.json")}
  end

  def render("show.json", %{page: page}) do
    %{data: render_one(page, TailwindsWeb.HelloView, "page.json")}
  end

  def render("page.json", %{page: page}) do
    %{title: page.title}
  end
end
