defmodule ListLength do
  def call(list), do: count(list, 0)

  defp count([], count), do: count

  defp count([head | tail], count) do
    count(tail, count + 1)
  end
end
