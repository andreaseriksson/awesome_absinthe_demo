defmodule AwesomeAbsintheDemoWeb.Resolvers.Authentication do
  alias AwesomeAbsintheDemo.Authentication

  def create_user(_parent, args, _context) do
    Authentication.create_user(args)
  end

  def login(%{email: email, password: password}, _info) do
    with {:ok, user} <- Authentication.authenticate_user(email, password),
         {:ok, jwt, _} <- AwesomeAbsintheDemo.Guardian.encode_and_sign(user) do
      {:ok, %{token: jwt}}
    end
  end
end
