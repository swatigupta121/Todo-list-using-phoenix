defmodule Todo.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :todoItem, :string

      timestamps()
    end
  end
end
