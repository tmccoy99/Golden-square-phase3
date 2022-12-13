require "interactive_calculator"

describe InteractiveCalculator do
  it "asks user for two numbers and returns the first minus the second" do
    io = double :io
    expect(io).to receive(:puts).with(
      "Hello. I will subtract two numbers.\nPlease enter a number")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result:\n" + "4 - 3 = 1")
    icalc = InteractiveCalculator.new(io)
    icalc.run
  end
end