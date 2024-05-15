require_relative '../calculator'

describe Calculator do
  it "should return valid sum" do
    inputString = "", "1", "1,5"
  	expect(Calculator.new.calculator(inputString.to_s)).to eq([0,1,6])
  end

  it "should return valid sum and ignore \n character" do
    inputString = "", "1", "1\n2,3"
    expect(Calculator.new.calculator(inputString.to_s)).to eq([0,1,6])
  end

  it "should return valid sum and ignore semicolon character" do
    inputString = "", "1", "1;2,3"
    expect(Calculator.new.calculator(inputString.to_s)).to eq([0,1,6])
  end

  it "should return error when input has negative character" do
    inputString = "", "-1", "1,5"
    expect(Calculator.new.calculator(inputString.to_s)).to eq("negative numbers not allowed")
  end

end