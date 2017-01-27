require 'field'

describe Field do

  subject(:field1) { described_class.new }

  context "letter" do
    it "should be nil until a player places something on it" do
      expect(field1.show).to be_nil
    end

    describe "#place" do

      before do
        field1.place("X")
      end

      it "has a space where an X or O can be placed" do
        expect(field1.show).to eq "X"
      end

      it "knows when a player has placed X or O" do
        expect(field1.taken?).to eq true
      end

      it "will not allow you to place a letter if the field is already occupied" do
        expect { field1.place("O") }.to raise_error "You cannot place a letter on an occupied space."
      end

    end
  end
end
