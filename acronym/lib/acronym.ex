defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    String.replace(string, "-", " ")
    |> String.replace(["_"], "")
    |> String.split(" ", trim: true)
    |> Enum.map(&take_first_letter(&1))
    |> Enum.join("")
  end

  defp take_first_letter(word) do
    String.at(word, 0)
    |> String.upcase()
  end
end
