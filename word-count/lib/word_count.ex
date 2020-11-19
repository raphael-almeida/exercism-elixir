defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.replace(sentence, [":", "!", "!", "&", "@", "$", "%", "^", "&", ","], "")
    |> String.split([" ", "_"])
    |> Enum.reject(fn word -> word == "" end)
    |> Enum.map(fn word -> String.downcase(word) end)
    |> Enum.reduce(%{}, fn word, map ->
      if Map.has_key?(map, word) do
        count = Map.get(map, word)
        Map.put(map, word, count + 1)
      else
        Map.put(map, word, 1)
      end
    end)
  end
end
