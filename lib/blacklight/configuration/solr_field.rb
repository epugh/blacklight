module Blacklight
  class Configuration::SolrField < OpenStructWithHashAccess
    def normalize! blacklight_config = nil
      self.label ||= self.field.try(:titleize)
      self
    end
  
    def validate!
      raise ArgumentError.new("Must supply a solr field name") if self.field.nil?
    end
  end
end

