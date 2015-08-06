defmodule Fibonnaci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n) when is_number(n) do
    fib(n - 1) + fib(n - 2)
  end

  def fib(list) do
    list |> Enum.map(&fib/1)
  end
end
