# My solution
def likes(names)
    one_like = "#{names[0]} likes this"
    two_likes = "#{names[0]} and #{names[1]} like this"
    three_likes = "#{names[0]}, #{names[1]} and #{names[2]} like this"
    more_than_three_likes = "#{names[0]}, #{names[1]} and #{names.count - 2} others like this"
  
  if names.empty?
    "no one likes this"
    elsif
    names.count == 1
    one_like
    elsif
    names.count == 2
    two_likes
    elsif
    names.count == 3
    three_likes
    elsif
    names.count >=4
    more_than_three_likes
  end
end


# Better solution
def likes2(names)
    formats = [
      'no one likes this',
      '%s likes this',
      '%s and %s like this',
      '%s, %s and %s like this'
    ]
    if names.length > 3
      return '%s, %s and %d others like this' % [names[0], names[1], names.length - 2]
    else
      return formats[names.length] % names
    end
  end