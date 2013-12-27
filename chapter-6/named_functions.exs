defmodule Times do
  def double(n), do: n * 2

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    Times.double(Times.double(n))
  end
end
