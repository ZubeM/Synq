defmodule SynqWeb.PageController do
  use SynqWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
