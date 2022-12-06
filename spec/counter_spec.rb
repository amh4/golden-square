require 'counter'

RSpec.describe Counter do
  it "returns a counter of numbers passed in" do
    counter = Counter.new
    counter.add(4)
    result = counter.report_length
    expect(result).to eq 'Counted to 4 so far.'
  end

  it "returns sum of multiple arguments" do
    counter = Counter.new
    counter.add(2)
    counter.add(10)
    counter.add(8)
    result = counter.report_length
    expect(result).to eq "Counted to 20 so far."
  end
end
