require 'rspec'
require_relative '../rot13'

describe "Rot13" do
  it "should return correct string in rot13 cypher" do
    expect(rot13("test")).to eq('grfg')
  end
  it "" do
    expect(rot13('Hello World')).to eq('Uryyb Jbeyq')
  end

end