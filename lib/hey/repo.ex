defmodule Hey.Repo do
  use Ecto.Repo,
    otp_app: :hey,
    adapter: Ecto.Adapters.Postgres
end
