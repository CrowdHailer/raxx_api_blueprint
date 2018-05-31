defmodule RaxxApiBlueprint.MixProject do
  use Mix.Project

  def project do
    [
      app: :raxx_api_blueprint,
      version: "0.1.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_options: [
        warnings_as_errors: true
      ],
      description: description(),
      docs: [extras: ["README.md"], main: "readme"],
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:raxx, "~> 0.15.4"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    Raxx middleware for routing requests based on an API Blueprint.
    """
  end

  defp package do
    [
      maintainers: ["Peter Saxton"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/crowdhailer/raxx_api_blueprint"}
    ]
  end
end
