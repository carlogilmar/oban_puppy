defmodule PuppyWeb.PageController do
  use PuppyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
