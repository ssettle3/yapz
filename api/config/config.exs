use Mix.Config

# General application configuration
config :yapz,
  ecto_repos: [Yapz.Repo]

# Configures the endpoint
config :yapz, Yapz.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "um7eQmgSa1ClOTtKN2IOvQHokSMNuZPBdyu/DAEXnQvarcGJkR3eJzFlslVhL+Mi",
  render_errors: [view: Yapz.ErrorView, accepts: ~w(json)],
  pubsub: [name: Yapz.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  secret_key: System.get_env("GUARDIAN_SECRET_KEY"),
  issuer: "Yapz",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: Yapz.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
