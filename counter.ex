defmodule Counter do
  def init(n \\ 0) do
    spawn fn -> counter(n) end
  end

  def counter(n \\ 0) do
    receive do
      :inc ->
        counter(n + 1)
      {:inc, by} ->
        counter(n + by)
      {:read, caller} ->
        # IO.puts "Counter is currently #{n}"
        send caller, n
        counter(n)
    end
  end
end
