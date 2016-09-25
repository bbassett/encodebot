defmodule Encodebot.Utils.String do
  def decode(input) do
    IO.puts(input)
    {:ok, result} = Base.url_decode64(input)
    result
  end

  def encode(input) do
    input
    |> Base.url_encode64()
    |> String.replace("=", "")
  end
end