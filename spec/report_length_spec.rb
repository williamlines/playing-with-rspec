require 'report_length'

RSpec.describe "report_length method test" do
  it "returns 'This string was 0 characters long.' when passed empty string" do
    expect(report_length("")).to eq "This string was 0 characters long."
  end

  it "returns 'This string was 10 characters long.' when passed 'characters'" do
    expect(report_length("characters")).to eq "This string was 10 characters long."
  end
end