defmodule AwesomeAbsintheDemo.Things.Thing do
  use Ecto.Schema
  import Ecto.Changeset

  schema "things" do
    field :name, :string
    belongs_to :user, AwesomeAbsintheDemo.Authentication.User
    has_many :features, AwesomeAbsintheDemo.Things.Feature

    timestamps()
  end

  @doc false
  def changeset(thing, attrs) do
    thing
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
