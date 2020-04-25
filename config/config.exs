# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :god,
  ecto_repos: [God.Repo]

# Configures the endpoint
config :god, GodWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "L4RhHIaUWnL1OqaS9jFIodi1LIin1SI8YF6SGHkqNjW0kdAtK/fO5gcbRrCJTfyZ",
  render_errors: [view: GodWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: God.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "VAP7LOJc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
