defmodule RingtailApi.Repo do
  use Ecto.Repo,
    otp_app: :ringtail_api,
    adapter: Sqlite.Ecto
end
