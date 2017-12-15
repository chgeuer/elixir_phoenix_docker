defmodule HelloWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :hello

  socket "/socket", HelloWeb.UserSocket

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/", from: :hello, gzip: false,
    only: ~w(css fonts images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  plug Plug.Session,
    store: :cookie,
    key: "_hello_key",
    signing_salt: "GZVGDT+n"

  plug HelloWeb.Router

  defp get_env!(key) do
    System.get_env(key) || raise "expected the #{key} environment variable to be set"
  end

  @doc """
  Callback invoked for dynamically configuring the endpoint.

  It receives the endpoint configuration and checks if
  configuration should be loaded from the system environment.
  """
  def init(_key, config) do
    if config[:load_from_system_env] do
      config = config
        |> Keyword.put(:url, [host: get_env!("HOST")])
        |> Keyword.put(:http, [:inet, port: (get_env!("PORT") |> String.to_integer)])
        |> Keyword.put(:secret_key_base, get_env!("SECRET_KEY_BASE"))
        
      IO.inspect(config)
      IO.puts "Using port #{config |> Keyword.get(:url) |> Keyword.get(:host)}:#{config |> Keyword.get(:http) |> Keyword.get(:port)}"

      {:ok, config}
    else
      {:ok, config}
    end
  end
end