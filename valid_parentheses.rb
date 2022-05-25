
def valid_parentheses(string)
  if string.length >= 0 && string.length <= 100
    string.match? /(?<=\()(?:[^()]+|\([^)]+\))+(?=\))|(^$)/
  else
    false
    end
end

