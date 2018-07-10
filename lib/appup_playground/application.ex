defmodule AppupPlayground.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  def start(_type, _args) do
    Logger.debug("Application starting: #{__MODULE__}")

    # List all child processes to be supervised
    children = [
      {AppupPlayground.NestedSupervisor, :ok}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AppupPlayground.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
