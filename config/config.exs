use Mix.Config

config :hello, HelloWeb.Endpoint,
  load_from_system_env: true,
  url: [host: "${HOST}"],
  http: [:inet, port: "${PORT}"],
  secret_key_base: "${SECRET_KEY_BASE}",
  render_errors: [view: HelloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hello.PubSub, adapter: Phoenix.PubSub.PG2],
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true,
  root: ".",
  version: Application.spec(:phoenix_distillery, :vsn)
  

  config :logger, :console,
    format: "$time $metadata[$level] $message\n",
    metadata: [:request_id]

  config :logger, level: :info
