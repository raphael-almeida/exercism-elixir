defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    numeral_map = %{1 => "I", 5 => "V"}
    numeral_map[number]
  end
end
