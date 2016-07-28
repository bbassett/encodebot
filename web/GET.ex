defmodule EncodeBot.Resource.GET do
  use Mazurka.Resource

  mediatype Mazurka.Mediatype.Hyperjson do
    action do
      %{
        "greeting" => Greeting.world(),
        "encode" => link_to("POST /encode"),
        "decode" => link_to("POST /decode")
      }
    end
  end
end