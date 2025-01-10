defmodule DataEngineeringApp.Repo.Migrations.CreateDataTable do
  use Ecto.Migration

  def change do
    create table(:data_entries) do
      add :field1, :string
      add :field2, :integer
      add :field3, :float

      timestamps()
    end
  end
end
