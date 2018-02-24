defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, &(_complement(&1)))
  end

  defp _complement(?G), do: ?C
  defp _complement(?C), do: ?G
  defp _complement(?T), do: ?A
  defp _complement(?A), do: ?U
end
