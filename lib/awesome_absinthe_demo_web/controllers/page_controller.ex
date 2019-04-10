defmodule AwesomeAbsintheDemoWeb.PageController do
  use AwesomeAbsintheDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
