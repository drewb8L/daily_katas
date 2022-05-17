# My solution
def generateHashtag(str)
  str = str.split(' ').each {|c| c.capitalize!}.join()
  if str.empty? || str.length > 139
    false
  else
    str.prepend('#')
  end
end

puts generateHashtag('Down With the Struggle')

# Other solutions
# def generateHashtag(str)
#   str = "#" << str.split.map(&:capitalize).join
#   str.size <= 140 && str.size > 1 ? str : false
# end
#
# def generateHashtag(str)
#   str.size > 1 && str.size <= 140 ? "#" + str.split.map { |x| x.capitalize }.join : false
# end