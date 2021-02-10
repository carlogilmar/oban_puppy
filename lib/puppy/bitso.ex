defmodule Puppy.Bitso do
  @moduledoc false

  def get_currencies do
    :timer.sleep(5000)
    response = HTTPoison.get!("https://api.bitso.com/v3/available_books")
    response_body = Poison.decode!(response.body)
    payload = response_body["payload"]
    Enum.into(payload, [], fn e -> e["book"] end)
  end
end
