defmodule EncodeBot.Resource.Error.NotFound.GET do
  use EncodeBot.Resource

  mediatype Mazurka.Mediatype.Hyperjson do
    action do
      %{
        "error" => "not found"
      }
    end
  end

end