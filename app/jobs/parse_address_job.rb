class ParseAddressJob < ApplicationJob
  queue_as :default

  def perform(address)
    geo = GeocoderService.new(address)
    result = geo.parse_address
  end

end
