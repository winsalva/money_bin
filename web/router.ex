defmodule MoneyBin.Router do
  use MoneyBin.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/api", MoneyBin do
    pipe_through :api
  end
end
