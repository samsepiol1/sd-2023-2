defmodule RecursividadeTest do
  use ExUnit.Case
  doctest Recursividade

  test "greets the world" do
    assert Recursividade.hello() == :world
  end
end
