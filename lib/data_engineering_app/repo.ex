defmodule DataEngineeringApp.Repo do
  use Ecto.Repo,
    otp_app: :data_engineering_app,
    adapter: Ecto.Adapters.Postgres
end
