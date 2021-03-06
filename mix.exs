defmodule AppupPlayground.MixProject do
  use Mix.Project

  def project do
    [
      app: :appup_playground,
      version: "0.3.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :observer, :runtime_tools, :wx],
      mod: {AppupPlayground.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:distillery, ">= 0.0.0"}
    ]
  end
end
