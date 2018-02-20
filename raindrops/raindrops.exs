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
    result = Enum.map([3, 5, 7], &(_raindrop(number, &1)))
    |> Enum.join ""

    _process_result(result, number)
  end

  defp _raindrop(n, factor), do: _raindrop_word(rem(n, factor), factor)

  defp _raindrop_word(0, 3), do: "Pling"
  defp _raindrop_word(0, 5), do: "Plang"
  defp _raindrop_word(0, 7), do: "Plong"
  defp _raindrop_word(_, _), do: ""

  defp _process_result(text, number), do: _verify_text(text, number)

  defp _verify_text("", number), do: "#{number}"
  defp _verify_text(text, _number), do: text
end
