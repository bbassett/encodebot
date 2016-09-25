defmodule Encodebot.Resource.GET do
  use Mazurka.Resource

  mediatype Hyper do
    action do
      %{
        "encode" => link_to("POST /encode"),
        "decode" => link_to("POST /decode")
      }
    end
  end
end
