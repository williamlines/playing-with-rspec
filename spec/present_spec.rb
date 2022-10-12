require "present"

RSpec.describe Present do
  context "when nothing has been wrapped and unwrap" do
    it "fails" do
      present = Present.new
      expect { present.unwrap}.to raise_error "No contents have been wrapped."
    end
  end

  context "when something has been wrapped and wrap" do
    it "fails" do
      present = Present.new
      present.wrap("box")
      expect {present.wrap("another box")}.to raise_error "A contents has already been wrapped."
    end
  end
  it "unwraps object properly when unwrap is called on wrapped present" do
    present = Present.new
    present.wrap("box")
    expect(present.unwrap).to eq "box"
  end
  it "unwraps when given integer to wrap" do
    present = Present.new
    present.wrap(1)
    expect(present.unwrap).to eq 1
  end
  it "unwraps when given array to wrap" do
    present = Present.new
    present.wrap([1,2,3,4])
    expect(present.unwrap).to eq [1,2,3,4]
  end
  it "can wrap and unwrap itself" do
    present = Present.new
    present.wrap(Present)
    expect(present.unwrap).to eq Present
  end
end