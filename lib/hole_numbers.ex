defmodule HoleNumbers do
  def holes(number) when number >= 10, do: holes(div(number, 10)) + holes(Integer.mod(number, 10))
  def holes(8), do: 2
  def holes(number) when number in [0, 4, 6, 9], do: 1
  def holes(_number), do: 0

  def sum_of_holes(number), do: 1..number |> Enum.map(&holes/1) |> Enum.sum()
end
