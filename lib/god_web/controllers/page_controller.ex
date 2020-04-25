defmodule GodWeb.PageController do
  use GodWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
