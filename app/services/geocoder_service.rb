class GeocoderService
  require 'ruby_postal/parser'

  def initialize(address)
    @address = address
  end

  def parse_address
    address_group = {}
    result = Postal::Parser.parse_address(@address)
    result.each do |r|
      address_group[r.values[0]] = r.values[1]
    end
    address_group
  end
end
