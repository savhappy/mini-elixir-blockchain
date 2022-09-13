import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ex_chain, ExChainWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "uUXBL2ZbaMFScxTi676N2rhnCpCCvha3JV9wHAXk9XmZTM4JGR0XXW6sYZzJ3mjc",
  server: false

# In test we don't send emails.
config :ex_chain, ExChain.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
