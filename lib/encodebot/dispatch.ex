defmodule EncodeBot.Dispatch do
  use Mazurka.Dispatch
  alias EncodeBot.Service

  service Greeting.world/0, Service.Greeting.world
end