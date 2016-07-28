defmodule EncodeBot.Resource.Decode.POST do
  use Mazurka.Resource

  let string = Input.get("string")

  mediatype Mazurka.Mediatype.Hyperjson do
    action do
      %{
        string
        # |> Base.encode64()
        # |> String.replace("=", "")
      }
    end

    affordance do
      %{
        "input" => %{
          "string" => %{
            "type" => "text",
            "required" => "true"
          }
        }
      }
    end
  end
end