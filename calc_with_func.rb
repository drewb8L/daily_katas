# frozen_string_literal: true
# My solution
def zero(operation = nil)
  operation.nil? ? 0 : operation.call(0)
end

def one(operation = nil)
  operation.nil? ? 1 : operation.call(1)
end

def two(operation = nil)
  operation.nil? ? 2 : operation.call(2)
end

def three(operation = nil)
  operation.nil? ? 3 : operation.call(3)
end

def four(operation = nil)
  operation.nil? ? 4 : operation.call(4)
end

def five(operation = nil)
  operation.nil? ? 5 : operation.call(5)
end

def six(operation = nil)
  operation.nil? ? 6 : operation.call(6)
end

def seven(operation = nil)
  operation.nil? ? 7 : operation.call(7)
end

def eight(operation = nil)
  operation.nil? ? 8 : operation.call(8)
end

def nine(operation = nil)
  operation.nil? ? 9 : operation.call(9)
end

def plus(num)
  proc { |x| x + num }
end

def minus(num)
  proc { |x| x - num }
end

def times(num)
  proc { |x| x * num }
end

def divided_by(num)
  proc { |x| x / num }
end

# Other solutions
%w[zero one two three four five six seven eight nine].each_with_index do |name, n|
  define_method(name) do |a = n|
    a == n ? a : n.to_f.method(a[0]).call(a[1])
  end
end
actions = [:+, :-, :*, :/]
%w[plus minus times divided_by].each_with_index do |name, i|
  define_method(name) do |n|
    [actions[i], n]
  end
end

#
%w(zero one two three four five six seven eight nine).each_with_index do |method,val|
  define_method(method) {|args=nil| args.nil? ? val : val.to_f.send(*args)}
end
{plus: :+, minus: :-, times: :*, divided_by: :/}.each do |method, op|
  define_method(method) { |arg| [op, arg] }
end


