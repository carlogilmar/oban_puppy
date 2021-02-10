defmodule Puppy.Workers.BitsoWorker do
  @moduledoc false
  use Oban.Worker
  alias Puppy.Bitso

  def perform(_args) do
    IO.puts("Starting...")
    Bitso.get_currencies()
    IO.puts("Finished work!!!...")
  end
end
