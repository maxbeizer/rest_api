defmodule RestApi.PageController do
  use RestApi.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
