defmodule HeyWeb.PageController do
  use HeyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
