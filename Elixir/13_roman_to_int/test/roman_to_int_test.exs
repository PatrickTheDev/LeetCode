defmodule RomanToIntTest do
  use ExUnit.Case
  doctest RomanToInt

  import RomanToInt

  describe "roman_to_int" do
    test "III to 3" do
      roman = "III"
      expectedNumeric = 3
      assert roman_to_int(roman) == expectedNumeric
    end

    test "LVIII to 58" do
      roman = "LVIII"
      expectedNumeric = 58
      assert roman_to_int(roman) == expectedNumeric
    end

    test "MCMXCIV to 1994" do
      roman = "MCMXCIV"
      expectedNumeric = 1994
      assert roman_to_int(roman) == expectedNumeric
    end
  end

end
