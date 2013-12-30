defmodule MyList do
  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)

  def sum_without_accumulator([]), do: 0
  def sum_without_accumulator([head | tail]), do: head + sum_without_accumulator(tail)


  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _) do
    value
  end

  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end

  def mapsum(list, fun) do
    map(list, fun) |> reduce(0, &(&1 + & 2))
  end

  def max([head | tail]) do
    _max(tail, head)
  end

  defp _max([], max), do: max

  defp _max([head | tail], max)
    when max >= head,
    do: _max(tail, max)

  defp _max([head | tail], max)
    when max < head,
    do: _max(tail, head)

  def caesar([], _n), do: []

  def caesar([ head | tail ], n)
    when head + n <= ?z,
    do: [ head + n | caesar(tail, n) ]

  def caesar([ head | tail ], n),
    do: [ head + n - 26 | caesar(tail, n) ]

  def span(from, to)
    when from === to,
    do: [to]

  def span(from, to) do
    [from | span(from + 1, to)]
  end

  def flatten([]), do: []
  def flatten([ head | tail ]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [ head ]
end

14 = MyList.mapsum [1, 2, 3], &(&1 * &1)

7 = MyList.max([6, 3, 7, 1])

'elixir' = MyList.caesar('ryvkve', 13)

[4, 5, 6, 7, 8] = MyList.span(4, 8)

[1, 2, 3, 4, 5, 6] = MyList.flatten([ 1,  [ 2,  3,  [4] ],  5,  [[[6]]]])
