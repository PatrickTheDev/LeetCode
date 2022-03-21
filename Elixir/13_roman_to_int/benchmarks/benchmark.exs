list = ["CMXLII", "DCCCXCVII", "CCLXIV", "CMXIX", "DCXL",
"CCCXXXII", "XLVII", "CCLXXV", "DCCLLLII", "DXX"]

Benchee.run(%{
  "roman_to_int" => fn -> Enum.map(list, fn x -> RomanToInt.roman_to_int(x) end) end
})
