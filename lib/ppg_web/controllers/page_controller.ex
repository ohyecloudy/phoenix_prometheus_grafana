defmodule PpgWeb.PageController do
  use PpgWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
