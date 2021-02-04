defmodule PhxTailwind.Repo do
  use Ecto.Repo,
    otp_app: :phx_tailwind,
    adapter: Ecto.Adapters.Postgres
end
