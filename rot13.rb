def rot13(string)
  string.tr!('a-zA-Z', 'n-za-mN-ZA-M')
end

puts rot13("A lazy number 2 is a number 1 ")
