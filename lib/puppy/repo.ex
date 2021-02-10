defmodule Puppy.Repo do
  use Ecto.Repo,
    otp_app: :puppy,
    adapter: Ecto.Adapters.Postgres
end
