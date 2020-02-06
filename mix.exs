defmodule ConfigTuples.MixProject do
  use Mix.Project

  @version "0.4.2"

  def project do
    [
      app: :config_tuples,
      version: @version,
      elixir: "~> 1.6 or ~> 1.9",
      package: package(),
      description: description(),
      source_url: "https://github.com/rockneurotiko/config_tuples",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    []
  end

  defp package do
    [
      maintainers: ["Miguel Garcia / Rock Neurotiko"],
      licenses: ["Beerware"],
      links: %{"GitHub" => "https://github.com/rockneurotiko/config_tuples"}
    ]
  end

  defp description do
    "ConfigTuples provides a elixir config provider (for Distillery and Elixir) that replace config tuples (e.g `{:system, value}`) to their expected runtime value."
  end

  defp deps do
    [
      {:distillery, "~> 2.1", optional: true, runtime: false},
      # Testing & docs:
      {:excoveralls, "~> 0.8", only: :test},
      {:ex_doc, "~> 0.19.0", only: :dev},
      {:inch_ex, "~> 2.0", only: :docs}
    ]
  end
end
