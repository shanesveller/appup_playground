defmodule AppupPlayground.NestedSupervisor do
  use Supervisor
  require Logger

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  @impl true
  def init(_args) do
    Logger.debug("Supervisor starting: #{__MODULE__}")

    children = [
      AppupPlayground.Worker
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

  def stop() do
    Logger.debug("Supervisor stopping: #{__MODULE__}")

    Supervisor.stop(__MODULE__)
  end
end
