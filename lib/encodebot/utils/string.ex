defmodule Encodebot.Utils.String do
  def decode(input) do
    input
    |>
    Base.url_decode64
  end

  def encode(input) do
    input
    |> Base.url_encode64()
    |> String.replace("=", "")
  end
end