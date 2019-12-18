defmodule HoleNumbersTest do
  use ExUnit.Case
  doctest HoleNumbers

  describe "HoleNumbers.holes/1" do
    %{0 => 1, 1 => 0, 2 => 0, 3 => 0, 4 => 1, 5 => 0, 6 => 1, 7 => 0, 8 => 2, 9 => 1}
    |> Enum.each(fn {number, holes} ->
      @number number
      @holes holes
      test "finds #{@holes} holes in #{@number}" do
        assert HoleNumbers.holes(@number) == @holes
      end
    end)
  end
end
