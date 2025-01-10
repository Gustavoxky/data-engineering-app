defmodule DataEngineeringAppTest do
  use ExUnit.Case
  doctest DataEngineeringApp

  test "greets the world" do
    assert DataEngineeringApp.hello() == :world
  end
end
