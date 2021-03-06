defmodule Hello.Mixfile do
  use Mix.Project

  def project do
   [app: :hello,
    version: "0.1.0",
    elixir: "~> 1.6.5",
    elixirc_paths: elixirc_paths(Mix.env),
    compilers: [:phoenix] ++ Mix.compilers,
    build_embedded: Mix.env == :prod,
    start_permanent: Mix.env == :prod,
    deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Hello, []}, extra_applications: [:logger]]
  end

  defp elixirc_paths(_), do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 1.3.2"},
     {:phoenix_ecto, "~> 3.3"},
     {:postgrex, ">= 0.0.0"},
     {:cowboy, "~> 1.0"},
     {:jason, "~> 1.0"},
     {:phoenix_html, "~> 2.11"},
     {:phoenix_live_reload, "~> 1.1", only: :dev}]
  end
end
