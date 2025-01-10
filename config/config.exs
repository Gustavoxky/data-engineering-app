import Config

config :data_engineering_app, DataEngineeringApp.Repo,
  username: "postgres",
  password: "gustavo",
  database: "data_engineering_app_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :data_engineering_app, ecto_repos: [DataEngineeringApp.Repo]
