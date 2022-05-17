require 'rspec'
require_relative '../NotVerySecure'
describe "alphanumeric?" do
  it "should block out space _ and accept new line" do
    expect(alphanumeric?(" ")).to be_falsey
    expect(alphanumeric?("")).to be_falsey
    expect(alphanumeric?("hello world_")).to be_falsey
    expect(alphanumeric?("HELLOworld123")).to be_truthy
    expect(alphanumeric?("HELLO\nworld123")).to be_truthy
    expect(alphanumeric?("HELLOworld123_")).to be_falsey
    expect(alphanumeric?("HELLO\nworÏld123")).to be_truthy
  end

  context "alphnumeric_with_new_line?" do
    it "should perform the same as above and accept newline" do
      expect(alphanumeric?("HELLO\nworld123")).to be_truthy
      expect(alphanumeric?("HELLOworÎld123_")).to be_falsey
      expect(alphanumeric?("HELLOworÏld123_")).to be_truthy
    end
  end

  context "utf8" do
    it "Tests for utf-8" do
      expect(utf8("helloworld")).to be_truthy
    end
  end
end