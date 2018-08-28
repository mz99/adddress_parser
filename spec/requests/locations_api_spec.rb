require 'rails_helper'

RSpec.describe "LocationsApi", type: :request do

  describe "POST #create" do

    let(:address_params) do
      {
        geo: {
          address: "Prinzessinnenstraße 26, 10969 Berlin",
        }
      }
    end

    it "returns parsed address" do
      post locations_path, params: address_params
      expect(response).to have_http_status(200)
    end
  end
end
