require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself when one number is provided" do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns the sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple comma-separated numbers" do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it "handles newlines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiter in the format //;\n1;2" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an exception for a single negative number" do
      expect {
        StringCalculator.add("1,-2,3")
      }.to raise_error("negative numbers not allowed -2")
    end

    it "raises an exception with all negative numbers listed" do
      expect {
        StringCalculator.add("-1,2,-3")
      }.to raise_error("negative numbers not allowed -1,-3")
    end
  end
end
