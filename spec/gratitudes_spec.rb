require "gratitudes"

RSpec.describe Gratitudes do
  it "returns 'Be grateful for: ' when given no gratitudes." do
    gratitude = Gratitudes.new
    result = gratitude.format
    expect(result).to eq "Be grateful for: "
  end
  
  it "returns 'Be grateful for: cheese' when given cheese." do
    gratitude = Gratitudes.new
    gratitude.add('cheese')
    result = gratitude.format
    expect(result).to eq "Be grateful for: cheese"
  end

  it "works for being grateful for multiple things" do
    gratitude = Gratitudes.new
    gratitude.add('cheese')
    gratitude.add('bacon')
    result = gratitude.format
    expect(result).to eq "Be grateful for: cheese, bacon"
  end
end
