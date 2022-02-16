defmodule ListFilter do
  def call([]), do: {:error,"Lista vazia"}

  def call(list), do: {:ok,filter(list)}

  defp filter(list) do
    re = Regex.compile!("^[+-]?[0-9]*\.?[0-9]*$")

    list |> Enum.filter(fn x -> Regex.match?(re, x) end ) |> Enum.filter(fn x -> rem(String.to_integer(x), 2) == 1 end) |> Enum.count()
  end
end
