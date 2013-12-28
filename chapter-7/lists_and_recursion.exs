defmodule MyList do
  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  def sum_without_accumulator([]), do: 0
  def sum_without_accumulator([head | tail]), do: head + sum_without_accumulator(tail)
end

