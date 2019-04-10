defmodule AwesomeAbsintheDemo.Repo do
  use Ecto.Repo,
    otp_app: :awesome_absinthe_demo,
    adapter: Ecto.Adapters.Postgres
end
