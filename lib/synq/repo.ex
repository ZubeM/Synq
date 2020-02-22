defmodule Synq.Repo do
  use Ecto.Repo,
    otp_app: :synq,
    adapter: Ecto.Adapters.Postgres
end
