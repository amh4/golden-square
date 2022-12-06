require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns a list of user given gratitudes" do
    array = Gratitudes.new
    array.add("sunshine")
    array.add("puppies")
    result = array.format
    expect(result).to eq "Be grateful for: sunshine, puppies"
  end
end
