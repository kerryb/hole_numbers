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

    test "adds up the holes in multi-digit numbers" do
      assert HoleNumbers.holes(1_420_608) == 6
    end
  end

  describe "HoleNumbers.sum_of_holes/1" do
    test "adds up the holes in all the numbers from 1 to the one supplied" do
      assert HoleNumbers.sum_of_holes(6259) == 12345
    end
  end
end
