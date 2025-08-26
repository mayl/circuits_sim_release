defmodule CircuitsSimTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :circuits_sim_test,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CircuitsSimTest.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      #{:circuits_i2c, "~> 2.1"},
      {:circuits_i2c, github: "elixir-circuits/circuits_i2c", branch: "dont-load-nif-if-not-built", override: true},
      {:circuits_sim, "~> 0.1"},

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
