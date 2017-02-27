defmodule RingtailApi.Router do
  use RingtailApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["application/x-google-protobuf"]
  end

  scope "/", RingtailApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", RingtailApi do
    pipe_through :api
  end
end
