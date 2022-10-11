require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in.' when passed 'horse'" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
  
  it "returns 'Close, but nope.' when passed 'haste'" do
    expect(check_codeword("haste")).to eq "Close, but nope."
  end
  
  it "returns 'WRONG!' when passed 'chain'" do
    expect(check_codeword("chain")).to eq "WRONG!"
  end
end