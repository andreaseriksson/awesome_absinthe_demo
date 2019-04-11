defmodule AwesomeAbsintheDemo.Things.Feature do
  use Ecto.Schema
  import Ecto.Changeset

  schema "features" do
    field :name, :string
    belongs_to :thing, AwesomeAbsintheDemo.Things.Thing

    timestamps()
  end

  @doc false
  def changeset(feature, attrs) do
    feature
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
