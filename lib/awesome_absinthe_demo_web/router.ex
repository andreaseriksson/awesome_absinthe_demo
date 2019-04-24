defmodule AwesomeAbsintheDemoWeb.Router do
  use AwesomeAbsintheDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug AwesomeAbsintheDemoWeb.Context
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: AwesomeAbsintheDemoWeb.Schema
    forward "/", Absinthe.Plug, schema: AwesomeAbsintheDemoWeb.Schema
  end

  scope "/", AwesomeAbsintheDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
end
