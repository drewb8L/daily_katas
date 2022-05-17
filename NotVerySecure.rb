def alphanumeric?(string)
  string.match /^[[:upper:][:lower:][:digit:]]+$/
end

def alphanumeric_with_new_line?(string)
  string.match /\A[[:upper:][:lower:][:digit:]]\z/
end

# Supposed actual solution below, this exact Regex patten is what i tried on the first few attempts to no avail
def alphanumeric?(string)
  /\A[a-zA-Z\d]+\z/ =~ string
end

# Other solutions
def alphanumeric?(string)
  return false if (string.empty? || string =~ /\s/)
  string.match /^[a-zA-Z\d]+$/
end

def alphanumeric?(string)
  return false if ["__?$$\nhelloworld\n"].include?(string)
  string.match? /^[a-z\d]+$/i
end