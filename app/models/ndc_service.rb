require 'faraday'
require 'haml'

class NdcService

  def self.all_debtors
    []
  end

end

__END__

def haml_engine
  Haml::Engine.new(
    request_file,
    { attr_wrapper: '"', format: :xhtml }
  )
end

def request_body
  haml_engine.render(self)
end

Ox.to_xml(Ox::Element)
Ox::Element.locate("resource/thing")
