require 'ox'
class Debtor

  attr_reader :xml_string

  def initialize(xml_string)
    @xml_string = xml_string
  end

  def name
    value_for('name')
  end

  def email
    value_for('email')
  end

  def phone
    value_for('phone')
  end

  def amount
    value_for('amount')
  end

  private

  def value_for(path)
    document.locate(path).first.text
  end

  def document
    return @document if instance_variable_defined?(:@document)
    @document = Ox.parse(xml_string)
  end
end
