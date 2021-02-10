# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :puppy,
  ecto_repos: [Puppy.Repo]

# Configures the endpoint
config :puppy, PuppyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VjiEIFGyPFBO0zkUOYfpbpNew3maMbK7+RX4CeMvDIHN4vmihZ+l2+xPAwbRyCul",
  render_errors: [view: PuppyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Puppy.PubSub,
  live_view: [signing_salt: "4HQAe3+i"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Oban Config
config :puppy, Oban,
  repo: Puppy.Repo,
  plugins: [Oban.Plugins.Pruner],
  queues: [default: 10, events: 50, media: 20]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
