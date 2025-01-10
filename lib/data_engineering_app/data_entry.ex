defmodule DataEngineeringApp.DataEntry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "data_entries" do
    field(:field1, :string)
    field(:field2, :integer)
    field(:field3, :float)

    timestamps()
  end

  def changeset(data_entry, attrs) do
    data_entry
    |> cast(attrs, [:field1, :field2, :field3])
    |> validate_required([:field1, :field2, :field3])
  end
end
