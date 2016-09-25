defmodule Encodebot.Resource.Encode.POST do
  use Mazurka.Resource
  alias Encodebot.Utils.String

  input text

  mediatype Hyper do
    action do
      String.encode(text)
    end

    affordance do
      %{
        "input" => %{
          "text" => %{
            "type" => "text",
            "required" => true
          }
        }
      }
    end
  end
end