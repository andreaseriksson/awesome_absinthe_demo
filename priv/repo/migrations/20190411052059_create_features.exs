defmodule AwesomeAbsintheDemo.Repo.Migrations.CreateFeatures do
  use Ecto.Migration

  def change do
    create table(:features) do
      add :name, :string
      add :thing_id, references(:things, on_delete: :delete_all)

      timestamps()
    end

    create index(:features, [:thing_id])
  end
end
