require 'counter'

RSpec.describe Counter do
  it "starts the count at 0" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns 3 when 3 is added to count" do
    counter = Counter.new
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 3 so far."
  end

  it "returns 2 when 1 is added twice to count" do
    counter = Counter.new
    counter.add(1)
    counter.add(1)
    result = counter.report
    expect(result).to eq "Counted to 2 so far."
  end
end