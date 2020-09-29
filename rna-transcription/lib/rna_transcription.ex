defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """

  def to_rna(dna) do
    dna_rna_map = %{?A => ?U, ?C => ?G, ?T => ?A, ?G => ?C}

    Enum.map(dna, fn x -> dna_rna_map[x] end)
  end
end
