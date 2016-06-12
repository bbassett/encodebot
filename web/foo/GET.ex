defmodule EncodeBot.Resource.Foo.GET do
  use EncodeBot.Resource

  mediatype Mazurka.Mediatype.Hyperjson do
    action do
      %{
        "foo" => "bar"
      }
    end
  end
end