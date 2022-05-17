# frozen_string_literal: true
# My solution
def spin_words(string)
  string.split(' ').each { |w| w.length >= 5 ? w.reverse! : w }.join("\s")
end

# Other solution
def spinWords(string)
  string.gsub(/\w{5,}/){ $&.reverse }
end
