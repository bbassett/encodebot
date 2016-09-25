defmodule Encodebot.Resource.Decode.POST do
  use Mazurka.Resource
  alias Encodebot.Utils.String

  input text

  mediatype Hyper do
    action do
      String.decode(text)
    end

    affordance do
      %{
        "input" => %{
          "text" => %{
            "type" => "string",
            "required" => true
          }
        }
      }
    end
  end
end