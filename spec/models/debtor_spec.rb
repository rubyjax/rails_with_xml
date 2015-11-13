require './app/models/debtor'

describe Debtor do

  let(:xml) do
    File.read('./spec/fixtures/debtor.xml')
  end

  subject do
    described_class.new(xml)
  end

  describe ".new" do
    it "knows the xml_string" do
      expect(subject.xml_string).to be
    end
  end

  describe "#name" do
    it "maps the name" do
      expect(subject.name).to eq("Micah Cooper")
    end
  end

  describe "#email" do
    it "maps the email" do
      expect(subject.email).to eq("mrmicahcooper@gmail.com")
    end
  end

  describe "#phone" do
    it "maps the phone" do
      expect(subject.phone).to eq("000-000-0000")
    end
  end

  describe "#email" do
    it "maps the email" do
      expect(subject.email).to eq("mrmicahcooper@gmail.com")
    end
  end

  describe "#amount" do
    it "maps the amount" do
      expect(subject.amount).to eq("99.0")
    end
  end


end
