defmodule God.Repo do
  use Ecto.Repo,
    otp_app: :god,
    adapter: Ecto.Adapters.Postgres
end
