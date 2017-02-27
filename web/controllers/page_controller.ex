defmodule RingtailApi.PageController do
  use RingtailApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
