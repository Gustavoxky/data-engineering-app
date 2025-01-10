defmodule DataEngineeringApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :data_engineering_app,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DataEngineeringApp.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.9"},   # Para integração com bancos de dados
      {:postgrex, ">= 0.0.0"}, # Adaptador para PostgreSQL
      {:nimble_csv, "~> 1.2"}  # Para manipulação de arquivos CSV
    ]
  end

end
