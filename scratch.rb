# A place for testing

class Animal
  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
  def display
    puts @name, @type
  end
end

# a = Animal.new("Larry", "Tiger")
# a.display

def one(op=nil)
  op.nil? ? 1 : op.call(1)
    
end
def three(op=nil)
  op.nil? ? 3 : op.call(3)
end

def plus(num)
  proc { |x| num + x }
end

def times(num)
  proc { |x| num * x }
end

def minus(num)
  proc { |x| x - num }
end

def divided_by(num)
  proc { |x| x / num }
end

def two(op=nil)
  op.nil? ? 2 : op.call(2)
end
puts three(divided_by(two()))