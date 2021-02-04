# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_tailwind,
  ecto_repos: [PhxTailwind.Repo]

# Configures the endpoint
config :phx_tailwind, PhxTailwindWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nVMyPneQkZ+lXs1L+GDqZ58dBZxKZW5RKfqWCV4t9reoKKtWXMwLAHkJkSzGZsLk",
  render_errors: [view: PhxTailwindWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxTailwind.PubSub,
  live_view: [signing_salt: "AyllILtb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
