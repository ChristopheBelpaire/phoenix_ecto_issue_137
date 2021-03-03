defmodule Issue137.Repo do
  use Ecto.Repo,
    otp_app: :issue_137,
    adapter: Ecto.Adapters.Postgres
end
