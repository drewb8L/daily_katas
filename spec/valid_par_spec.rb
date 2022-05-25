require 'rspec'
require_relative '../valid_parentheses'

describe "valid_parentheses" do
  it "should return false if parentheses are in the wrong order" do
    expect(valid_parentheses("  (")).to be_falsey
    expect(valid_parentheses(")test")).to be_falsey
    expect(valid_parentheses("hi())(")).to be_falsey
    expect(valid_parentheses("hi())()()()(")).to be_falsey
  end
  it "should return true on blank spaces" do
    expect(valid_parentheses("")).to be_truthy

  end

  it "should return true if parentheses are balanced" do
    expect(valid_parentheses("hi(hi)()")).to be_truthy

  end
end
