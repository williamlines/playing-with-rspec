require 'greet'

RSpec.describe "greet method" do
  it "returns 'Hello Brian!' when passed 'Brian'" do
    expect(greet("Brian")).to eq "Hello Brian!"
  end
end