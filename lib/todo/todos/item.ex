defmodule Todo.Todos.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :todoItem, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:todoItem])
    |> validate_required([:todoItem])
  end
end
