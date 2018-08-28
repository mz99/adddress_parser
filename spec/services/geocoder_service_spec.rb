RSpec.describe GeocoderService, type: :helper do

  let (:service) { GeocoderService.new('Prinzessinnenstraße 26, 10969 Berlin') }

  it "the service successfully parses an address" do
    expect(service.parse_address).to include({city: 'berlin', road: 'prinzessinnenstraße', house_number: '26', postcode: '10969' })
  end

end
