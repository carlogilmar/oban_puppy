defmodule Puppy.Job do
  @moduledoc false

  def execute do
    %{}
    |> Puppy.Workers.BitsoWorker.new()
    |> Oban.insert()
  end
end
