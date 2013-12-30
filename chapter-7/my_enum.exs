defmodule MyEnum do
  def all?([], _fun), do: true

  def all?([head | tail], fun) do
    fun.(head) and all?(tail, fun)
  end

  def each([], _fun), do: :ok

  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def filter([], _fun), do: []

  def filter([head | tail], fun) do
    if fun.(head) === true do
      [head | filter(tail, fun)]
    else
      filter(tail, fun)
    end
  end

  def split(list, count), do: _split(list, [], count)

  defp _split(tail, front, 0), do: [front, tail]

  defp _split([head | tail], front, count) do
    _split(tail, front ++ [head], count - 1)
  end

  def take(list, count), do: hd(split(list, count))
end

defmodule Primes do
  import MyEnum

  def up_to(n) do

  end
end

list = [2, 4, 6]
true = MyEnum.all?(list, &(rem(&1, 2) == 0))
[2] = MyEnum.filter([1, 2, 3], fn(x) -> rem(x, 2) == 0 end)
[[1, 2, 3], [4, 5, 6]] = MyEnum.split([1,2,3,4,5,6], 3)
[1, 2, 3] = MyEnum.take([1, 2, 3, 4, 5, 6], 3)

#[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37] = Primes.up_to(40)
