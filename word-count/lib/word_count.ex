defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.replace(sentence, [":", "!", "!", "&", "@", "$", "%", "^", "&", ","], "")
    |> String.downcase()
    |> String.split([" ", "_"])
    |> Enum.reject(&(&1 == ""))
    |> Enum.reduce(%{}, &add_to_map(&2, &1))
  end

  defp add_to_map(map, word) when is_map_key(map, word) do
    count = Map.get(map, word)
    Map.put(map, word, count + 1)
  end

  defp add_to_map(map, word) do
    Map.put(map, word, 1)
  end
end
