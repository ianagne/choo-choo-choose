defmodule ChooChooChooseWeb.HomeController do
  use ChooChooChooseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
