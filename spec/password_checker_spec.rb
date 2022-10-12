require "password_checker"

RSpec.describe PasswordChecker do
  it "returns true when passed a valid password" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("12345678910")).to be true
  end

  context "when password is invalid" do
    it "gives fail message" do
      password_checker = PasswordChecker.new
      expect {password_checker.check("123")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when password is empty string" do
    it "gives fail message" do
      password_checker = PasswordChecker.new
      expect {password_checker.check("")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end