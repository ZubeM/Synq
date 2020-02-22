# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :synq,
  ecto_repos: [Synq.Repo]

# Configures the endpoint
config :synq, SynqWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s93zUxy0sMBSaIh8snkAljZ/tdYMbF8bvQWuDZ3wlKpbxd/OpXYI50ISTx5vsjjy",
  render_errors: [view: SynqWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Synq.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "8sZUT/Fv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
