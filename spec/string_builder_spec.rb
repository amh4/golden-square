require 'string_builder'

RSpec.describe StringBuilder do
  it "returns concat string" do
    word = StringBuilder.new
    word.add("chicken")
    word.add(" ")
    word.add("nuggets")
    result = word.output
    expect(result).to eq "chicken nuggets"
  end

  it "returns the count of the string" do
    expected = 6
    word = StringBuilder.new
    word.add("Banana")
    result = word.size
    expect(result).to match expected
  end
end