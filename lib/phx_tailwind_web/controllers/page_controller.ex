defmodule PhxTailwindWeb.PageController do
  use PhxTailwindWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
