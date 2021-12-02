defmodule ListFilter do
  def call(list) do
    Enum.map(list, fn item -> Integer.parse(item) end) |>
    Enum.filter(fn item -> filter_number(item) end) |>
    Enum.map(fn item -> elem(item, 0) end) |>
    Enum.filter(fn item -> filter_impar(item) end) |>
    Enum.count()
  end

  defp filter_number(item), do: item != :error

  defp filter_impar(item), do: rem(item, 2) != 0



end
