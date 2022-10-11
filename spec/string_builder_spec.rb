require 'string_builder'

RSpec.describe StringBuilder do
  it "returns 0 for the size of empty string" do
    string = StringBuilder.new
    result = string.size
    expect(result).to eq 0
  end
  
  it "outputs '' when given an empty string" do
    string = StringBuilder.new
    result = string.output
    expect(result).to eq ""
  end
  
  it "outputs the size of a non-empty string" do
    string = StringBuilder.new
    string.add("1234")
    result = string.size
    expect(result).to eq 4
  end

  it "outputs a non empty string" do
    string = StringBuilder.new
    string.add("Hello world!")
    result = string.output
    expect(result).to eq "Hello world!"
  end
  
  it "outputs the size of a non-empty string when given multiple strings" do
    string = StringBuilder.new
    string.add("1234")
    string.add("5678")
    result = string.size
    expect(result).to eq 8
  end
  
  it "outputs a non empty string when given multiple strings" do
    string = StringBuilder.new
    string.add("Hello ")
    string.add("world!")
    result = string.output
    expect(result).to eq "Hello world!"
  end
end
