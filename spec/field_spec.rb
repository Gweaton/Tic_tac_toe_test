require 'field'

describe Field do

  subject(:field1) { described_class.new("A1") }

  it "should be assigned a location"  do
    expect(field1.location).to eq "A1"
  end

  context "letter" do
    it "should be nil until a player places something on it" do
      expect(field1.show).to be_nil
    end

    it "has a space where an X or Y can be placed" do
      field1.place("X")
      expect(field1.show).to eq "X"
    end
  end
end
