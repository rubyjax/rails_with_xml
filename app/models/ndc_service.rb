require 'faraday'
require 'haml'

class NdcService
  URL = "http://rails-with-xml.mockmachine.com/all_debtors"

  def self.all_debtors
    new.all_debtors
  end

  def all_debtors
    debtor_elements.map do |element|
      xml = Ox.to_xml(element)
      Debtor.new(xml)
    end
  end

  def debtor_elements
    document.locate('resources/debtors/*')
  end

  def document
    Ox.parse(response_body)
  end

  def response_body
    Faraday.post(URL, request_body).body
  end

  def request_body
    haml_engine.render(self)
  end

  def haml_engine
    Haml::Engine.new(
      request_file,
      { attr_wrapper: '"', format: :xhtml }
    )
  end

  def request_file
    "#{Rails.root}/app/models/ndc_service.xml.haml"
  end

end
