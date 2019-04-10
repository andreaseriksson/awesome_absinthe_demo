use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :awesome_absinthe_demo, AwesomeAbsintheDemoWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :awesome_absinthe_demo, AwesomeAbsintheDemo.Repo,
  username: "postgres",
  password: "postgres",
  database: "awesome_absinthe_demo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
