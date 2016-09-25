defmodule Encodebot.Resource.Error.GET do
  use Mazurka.Resource

  mediatype Hyper do
    action do
      %{
        "error" => %{
          "message" => "Resource not found"
        }
      }
    end
  end
end
