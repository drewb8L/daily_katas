 # My solution
def alphabet_position(string)
    pos = []
    string = string.downcase.split(/[^A-Za-z]/).join().each_codepoint {|c| pos << "#{c - 96}"}
    pos.join("\s")
end

puts alphabet_position("The sunset sets at twelve o' clock.")

# Better solution
def alphabet_position(text)
    text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
  end