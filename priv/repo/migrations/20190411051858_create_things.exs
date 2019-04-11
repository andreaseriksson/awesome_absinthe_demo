defmodule AwesomeAbsintheDemo.Repo.Migrations.CreateThings do
  use Ecto.Migration

  def change do
    create table(:things) do
      add :name, :string
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:things, [:user_id])
  end
end
