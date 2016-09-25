defmodule Encodebot.Resource.Decode.POST do
  use Mazurka.Resource
  alias Encodebot.Utils.String

  input encoded_string

  mediatype Hyper do
    action do
      String.decode(encoded_string)
    end

    affordance do
      %{
        "input" => %{
          "encoded_string" => %{
            "type" => "string",
            "required" => true
          }
        }
      }
    end
  end
end