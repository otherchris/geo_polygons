defmodule GeoPolygons.Mixfile do
  use Mix.Project

  def project do
    [app: :geo_polygons,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     name: "GeoPolygons",
     source_url: "https://github.com/chriscaragianis/geo_polygons"
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test], runtime: false},
      {:poison, "~> 3.1"},
      {:geo, "~> 2.0"},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp description() do
    "Types and tools for geographical polygons"
  end

  defp package() do
    [
      name: "geo_polygons",
      files: ["lib", "test", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Chris Caragianis"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/chriscaragianis/geo_polygons"},
    ]
  end
end
