defmodule Todo.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Todo.Todos` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        todoItem: "some todoItem"
      })
      |> Todo.Todos.create_item()

    item
  end
end
