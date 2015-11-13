require 'rails_helper'

describe NdcService do

  describe ".all_debtors" do
    subject { described_class.all_debtors }
    it "returns a collection of Debtors" do
      expect(subject.first).to be_a(Debtor)
    end
  end

  describe "#debtor_elements" do
    subject { described_class.new.debtor_elements }
    it "is a collection of Ox::Elements" do
      expect(subject.first).to be_a(Ox::Element)
    end
  end

end
