# My solution
def narcissistic?(value)
    numbers = value.digits
    sum = numbers.map do |n|
        n.pow(numbers.length)
    end
    sum = sum.sum
    is_narcissistic = sum == value ? true : false
    is_narcissistic
end

narcissistic?(5)

# Better solutions
def narcissistic1?(num)
    digits = num.digits
    num == digits.map { |d| d ** digits.size }.reduce(:+)
  end

  def narcissistic2?( value )
    value == value.to_s.chars.map { |x| x.to_i**value.to_s.size }.reduce(:+)
  end