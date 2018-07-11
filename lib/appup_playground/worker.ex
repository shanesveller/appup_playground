defmodule AppupPlayground.Worker do
  use GenServer
  require Logger

  def init(args) do
    Logger.debug("Worker starting: #{__MODULE__}")

    {:ok, args}
  end

  def start_link(args) do
    GenServer.start_link(__MODULE__, args)
  end
end
