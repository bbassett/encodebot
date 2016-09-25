defmodule Encodebot.Resource.Encode.POST do
  use Mazurka.Resource
  alias Encodebot.Utils.String

  input string

  mediatype Hyper do
    action do
      String.encode(string)
    end

    affordance do
      %{
        "input" => %{
          "string" => %{
            "type" => "text",
            "required" => true
          }
        }
      }
    end
  end
end