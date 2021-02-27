defmodule Tailwinds.Repo do
  use Ecto.Repo,
    otp_app: :tailwinds,
    adapter: Ecto.Adapters.Postgres
end
