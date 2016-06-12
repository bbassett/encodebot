defmodule EncodeBot.Protocol.HTTP.Router do
  use __MODULE__.Helper
  use Mazurka.Mediatype.Hyperjson.Hyperpath
  use EncodeBot.Dispatch

  plug :match
  if Mix.env == :dev do
    use Plug.Debugger
    plug Plug.Logger
  end
  plug :dispatch
end