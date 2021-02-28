defmodule TailwindsWeb.HelloLive do
  use Phoenix.LiveView
  # use TailwindsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :val, 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, update(socket, :val, &(&1+1))}
  end

  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :val, &(&1-1))}
  end

  def render(assigns) do
    ~L"""
    <div class="phx-hero">
     <h1>Hello Live View</h1>
      <h4>The count is: <%= @val %></h4>
      <button class="bg-red-500 hover:bg-red-700 py-10 px-5 rounded font-bold text-white" phx-click="dec"><<</button>
      <button class="bg-blue-500 hover:bg-blue-700 py-10 px-5 rounded font-bold text-white" phx-click="inc">>></button>
    </div>
    """
  end
end
