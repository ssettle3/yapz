defmodule Yapz.PageController do
  use Yapz.Web, :controller

  def index(conn, _) do
    text conn, "YAPZ API"
  end
end