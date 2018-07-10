defmodule AppupPlaygroundTest do
  use ExUnit.Case
  doctest AppupPlayground

  test "greets the world" do
    assert AppupPlayground.hello() == :world
  end
end
