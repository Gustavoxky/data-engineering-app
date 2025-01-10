defmodule DataEngineeringApp.Pipeline do
  alias DataEngineeringApp.{Repo, DataEntry}
  require NimbleCSV

  NimbleCSV.define(MyCSVParser, separator: ",", escape: "\"")

  def process_csv(file_path) do
    file_path
    |> File.stream!()
    |> MyCSVParser.parse_stream()
    |> Enum.each(&insert_data/1)
  end

  defp insert_data([field1, field2, field3]) do
    %DataEntry{}
    |> DataEntry.changeset(%{
      field1: field1,
      field2: String.to_integer(field2),
      field3: String.to_float(field3)
    })
    |> Repo.insert!()
  end
end
