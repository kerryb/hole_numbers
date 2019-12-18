defmodule HoleNumbers do
  def holes(8), do: 2
  def holes(number) when number in [0, 4, 6, 9], do: 1
  def holes(_number), do: 0
end
