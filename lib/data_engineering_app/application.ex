defmodule DataEngineeringApp.Application do
  use Application

  def start(_type, _args) do
    children = [
      DataEngineeringApp.Repo
    ]

    opts = [strategy: :one_for_one, name: DataEngineeringApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
