defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    result = Enum.map([3, 5, 7], &(_randrop_words(number, &1)))
    |> Enum.join ""

    if result == "" do
      "#{number}"
    else
      result
    end
  end

  defp _randrop_words(number, factor) do
    if rem(number, factor) == 0 do
      cond do
        factor == 3 ->
          "Pling"
        factor == 5 ->
          "Plang"
        factor == 7 ->
          "Plong"
      end
    end
  end
end
