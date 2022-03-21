defmodule RomanToInt do
  @moduledoc """
  Documentation for `RomanToInt`.
  """

  @doc """
  RomanToInt.

  ## Examples

      iex> RomanToInt.roman_to_int("III")
      3

  """
  @roman %{"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

  @spec roman_to_int(s :: String.t()) :: integer()
  def roman_to_int(s) do
    numeric = String.graphemes(s) |> Enum.map(fn x -> @roman[x] end)
    calculate(0, numeric)
  end

  @spec calculate(acc :: integer(), list()) :: integer()
  def calculate(acc, []) do
    acc
  end

  def calculate(acc, [x]) do
    acc + x
  end

  def calculate(acc, [head|tail]) do
    if head < List.first(tail) do
      calculate(acc + (List.first(tail) - head), Enum.drop(tail, 1))
    else
      calculate(acc + head, tail)
    end
  end
end
