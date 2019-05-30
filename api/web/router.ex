defmodule Yapz.Router do
  use Yapz.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Yapz do
    pipe_through :api
  end
end
