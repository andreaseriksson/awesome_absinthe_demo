# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :awesome_absinthe_demo,
  ecto_repos: [AwesomeAbsintheDemo.Repo]

# Configures the endpoint
config :awesome_absinthe_demo, AwesomeAbsintheDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+jvLkmiszLwz+DfHobPPh4GH08LldBMNiUeweuVF2F688Kab6RGTwRUXwCMN8QpL",
  render_errors: [view: AwesomeAbsintheDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AwesomeAbsintheDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :awesome_absinthe_demo, AwesomeAbsintheDemo.Guardian,
  issuer: "AwesomeAbsintheDemo",
  secret_key: "x5DtmmMGjqmRX0Uw3n4K+UGIALWaw5a/8gYQop2yyUwByg6lGDhagLMVpPW4dN1F",
  ttl: {30, :days}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
