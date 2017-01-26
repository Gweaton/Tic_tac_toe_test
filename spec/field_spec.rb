require 'field'

describe Field do

  subject(:field1) { described_class.new("A1") }

  it("should be assigned a location") do
    expect(field1.location).to eq "A1"
  end
end
