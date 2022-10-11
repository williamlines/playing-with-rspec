require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in.' when passed 'horse' (correct answer)" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
  
  it "returns 'Close, but nope.' when passed 'haste'(nearly correct answer)" do
    expect(check_codeword("haste")).to eq "Close, but nope."
  end
  
  it "returns 'WRONG!' when passed 'chain'(incorrect answer)" do
    expect(check_codeword("chain")).to eq "WRONG!"
  end

  it "returns 'WRONG!' when passed 'hairy'(correct first letter only)" do
    expect(check_codeword("chain")).to eq "WRONG!"
  end

  it "returns 'WRONG!' when passed 'paste'(correct final letter only)" do
    expect(check_codeword("chain")).to eq "WRONG!"
  end
end