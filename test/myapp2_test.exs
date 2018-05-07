defmodule Myapp2Test do
  use ExUnit.Case
  doctest Myapp2

  test "greets the world" do
    assert Myapp2.hello() == :world
  end
end
