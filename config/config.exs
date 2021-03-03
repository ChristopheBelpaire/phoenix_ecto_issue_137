# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :issue_137,
  ecto_repos: [Issue137.Repo]

# Configures the endpoint
config :issue_137, Issue137Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lLd2dprZK5llDg2HeQMMq4CmlGk8ImWo8HeM+33bW8TTcsr4xjjVOjXC9nw12VbK",
  render_errors: [view: Issue137Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Issue137.PubSub,
  live_view: [signing_salt: "8qAoGB/g"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
